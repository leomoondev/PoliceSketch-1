//
//  LPSCurrentSketch.m
//  PoliceSketch
//
//  Created by Suvan Ramani on 2016-11-07.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "LPSCurrentSketch.h"

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
        _currentEyes = 0;
        _currentNose = 0;
        _currentMouth = 0;
    }
    return self;
}

-(void)nextEyesImage {
    self.currentEyes = (self.currentEyes + 1) % self.eyesArray.count;
}

-(void)previousEyesImage {
    self.currentEyes = (self.currentEyes - 1) % self.eyesArray.count;
}

-(void)nextNoseImage {
    self.currentNose = (self.currentNose + 1) % self.noseArray.count;
}

-(void)previousNoseImage {
    self.currentNose = (self.currentNose - 1) % self.noseArray.count;
}

-(void)nextMouthImage {
    self.currentMouth = (self.currentMouth + 1) % self.mouthArray.count;
}

-(void)previousMouthImage {
    self.currentMouth = (self.currentMouth - 1) % self.mouthArray.count;
}



@end
