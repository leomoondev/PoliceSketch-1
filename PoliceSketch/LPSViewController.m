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
    
    [self.eyesView setImage:[self.currentSketch nextEyesImage]];
    [self.noseView setImage:[self.currentSketch nextNoseImage]];
    [self.mouthView setImage:[self.currentSketch nextMouthImage]];
}

- (IBAction)eyesNext:(UIButton *)sender {
    
    [self.eyesView setImage:[self.currentSketch nextEyesImage]];
}

- (IBAction)eyesPrevious:(UIButton *)sender {
    
    [self.eyesView setImage:[self.currentSketch previousEyesImage]];
}

- (IBAction)noseNext:(UIButton *)sender {
    
    [self.noseView setImage:[self.currentSketch nextNoseImage]];
}

- (IBAction)nosePrevious:(UIButton *)sender {
    
    [self.noseView setImage:[self.currentSketch previousNoseImage]];
}

- (IBAction)mouthNext:(UIButton *)sender {
    
    [self.mouthView setImage:[self.currentSketch nextMouthImage]];
}

- (IBAction)mouthPrevious:(UIButton *)sender {
    
    [self.mouthView setImage:[self.currentSketch previousMouthImage]];
}








@end
