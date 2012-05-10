//
//  MasterViewController.m
//  SimpleAudioEngine
//
//  Created by akin liu on 12-5-10.
//  Copyright (c) 2012年 Zhihu Inc. All rights reserved.
//

#import "MasterViewController.h"

#import "SimpleAudioEngine.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [[SimpleAudioEngine sharedEngine] preloadBackgroundMusic:@"beyond.mp3"];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)play:(id)sender {
  [[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"beyond.mp3"];
}

- (IBAction)pause:(id)sender {
  [[SimpleAudioEngine sharedEngine] pauseBackgroundMusic];
}

- (IBAction)stop:(id)sender {
  [[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
}

- (IBAction)resume:(id)sender {
  [[SimpleAudioEngine sharedEngine] resumeBackgroundMusic];
}
@end
