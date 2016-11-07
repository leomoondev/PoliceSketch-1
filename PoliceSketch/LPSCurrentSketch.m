//
//  LPSCurrentSketch.m
//  PoliceSketch
//
//  Created by Suvan Ramani on 2016-11-07.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "LPSCurrentSketch.h"

@interface LPSCurrentSketch()

@property (nonatomic) NSInteger currentEyes;
@property (nonatomic) NSInteger currentNose;
@property (nonatomic) NSInteger currentMouth;

@property (nonatomic, strong) NSArray *eyesArray;
@property (nonatomic, strong) NSArray *noseArray;
@property (nonatomic, strong) NSArray *mouthArray;

@end

@implementation LPSCurrentSketch

- (instancetype)init
{
    self = [super init];
    if (self) {
        // Create arrays containing all images
        
        _eyesArray = [NSArray arrayWithObjects:
                      [UIImage imageNamed:@"eyes_1.jpg"],
                      [UIImage imageNamed:@"eyes_2.jpg"],
                      [UIImage imageNamed:@"eyes_3.jpg"],
                      [UIImage imageNamed:@"eyes_4.jpg"],
                      [UIImage imageNamed:@"eyes_5.jpg"], nil];
        
        _noseArray = [NSArray arrayWithObjects:
                            [UIImage imageNamed:@"nose_1.jpg"],
                            [UIImage imageNamed:@"nose_2.jpg"],
                            [UIImage imageNamed:@"nose_3.jpg"],
                            [UIImage imageNamed:@"nose_4.jpg"],
                            [UIImage imageNamed:@"nose_5.jpg"], nil];
        
        _mouthArray = [NSArray arrayWithObjects:
                            [UIImage imageNamed:@"mouth_1.jpg"],
                            [UIImage imageNamed:@"mouth_2.jpg"],
                            [UIImage imageNamed:@"mouth_3.jpg"],
                            [UIImage imageNamed:@"mouth_4.jpg"],
                            [UIImage imageNamed:@"mouth_5.jpg"], nil];
        
        // Set current image indices
        _currentEyes = 4;
        _currentNose = 4;
        _currentMouth = 4;
    }
    return self;
}

-(UIImage *)nextEyesImage {
    self.currentEyes = (self.currentEyes + 1) % self.eyesArray.count;
    return [self.eyesArray objectAtIndex:self.currentEyes];
}

-(UIImage *)previousEyesImage {
    if (self.currentEyes == 0) {
        self.currentEyes = (self.eyesArray.count - 1);
    } else {
        self.currentEyes = (self.currentEyes - 1) % self.eyesArray.count;
    }
    return [self.eyesArray objectAtIndex:self.currentEyes];
}

-(UIImage *)nextNoseImage {
    self.currentNose = (self.currentNose + 1) % self.noseArray.count;
    return [self.noseArray objectAtIndex:self.currentNose];
}

-(UIImage *)previousNoseImage {
    if (self.currentNose == 0) {
        self.currentNose = (self.noseArray.count - 1);
    } else {
        self.currentNose = (self.currentNose - 1) % self.noseArray.count;
    }
    return [self.noseArray objectAtIndex:self.currentNose];
}

-(UIImage *)nextMouthImage {
    self.currentMouth = (self.currentMouth + 1) % self.mouthArray.count;
    return [self.mouthArray objectAtIndex:self.currentMouth];
}

-(UIImage *)previousMouthImage {
    if (self.currentMouth == 0) {
        self.currentMouth = (self.mouthArray.count - 1);
    } else {
        self.currentMouth = (self.currentMouth - 1) % self.mouthArray.count;
    }
    return [self.mouthArray objectAtIndex:self.currentMouth];
}

@end
