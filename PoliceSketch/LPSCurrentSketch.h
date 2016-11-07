//
//  LPSCurrentSketch.h
//  PoliceSketch
//
//  Created by Suvan Ramani on 2016-11-07.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LPSCurrentSketch : NSObject

@property (nonatomic) NSInteger currentEyes;
@property (nonatomic) NSInteger currentNose;
@property (nonatomic) NSInteger currentMouth;

@property (nonatomic, strong) NSArray *eyesArray;
@property (nonatomic, strong) NSArray *noseArray;
@property (nonatomic, strong) NSArray *mouthArray;

-(void)nextEyesImage;
-(void)previousEyesImage;
-(void)nextNoseImage;
-(void)previousNoseImage;
-(void)nextMouthImage;
-(void)previousMouthImage;

@end
