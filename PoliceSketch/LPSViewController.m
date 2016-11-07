//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "LPSCurrentSketch.h"

@interface LPSViewController()

@property (weak, nonatomic) IBOutlet UIImageView *eyesView;
@property (weak, nonatomic) IBOutlet UIImageView *noseView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthView;

@property (nonatomic, strong) LPSCurrentSketch *currentSketch;

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.currentSketch = [[LPSCurrentSketch alloc] init];
    
    [self.eyesView setImage:[self.currentSketch.eyesArray objectAtIndex:self.currentSketch.currentEyes]];
    [self.noseView setImage:[self.currentSketch.noseArray objectAtIndex:self.currentSketch.currentNose]];
    [self.mouthView setImage:[self.currentSketch.mouthArray objectAtIndex:self.currentSketch.currentMouth]];
}

- (IBAction)eyesNext:(UIButton *)sender {
    
    [self.currentSketch nextEyesImage];
    [self.eyesView setImage:[self.currentSketch.eyesArray objectAtIndex:self.currentSketch.currentEyes]];
}

- (IBAction)eyesPrevious:(UIButton *)sender {
    
    [self.currentSketch previousEyesImage];
    [self.eyesView setImage:[self.currentSketch.eyesArray objectAtIndex:self.currentSketch.currentEyes]];
}

- (IBAction)noseNext:(UIButton *)sender {
    
    [self.currentSketch nextNoseImage];
    [self.noseView setImage:[self.currentSketch.noseArray objectAtIndex:self.currentSketch.currentNose]];
}

- (IBAction)nosePrevious:(UIButton *)sender {
    
    [self.currentSketch previousNoseImage];
    [self.noseView setImage:[self.currentSketch.noseArray objectAtIndex:self.currentSketch.currentNose]];
}

- (IBAction)mouthNext:(UIButton *)sender {
    
    [self.currentSketch nextMouthImage];
    [self.mouthView setImage:[self.currentSketch.mouthArray objectAtIndex:self.currentSketch.currentMouth]];
}

- (IBAction)mouthPrevious:(UIButton *)sender {
    
    [self.currentSketch previousMouthImage];
    [self.mouthView setImage:[self.currentSketch.mouthArray objectAtIndex:self.currentSketch.currentMouth]];
}








@end
