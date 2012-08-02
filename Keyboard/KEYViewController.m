//
//  KEYViewController.m
//  Keyboard
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KEYViewController.h"

@interface KEYViewController ()

@property (nonatomic, strong) AVAudioPlayer *player;
@end

@implementation KEYViewController
@synthesize player;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle]pathForResource:@"C" ofType:@"m4a"]];
    
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    if(self.player)
    {
        player.numberOfLoops = 0;
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)playNote:(UIButton *)sender {
    NSURL *fileURL = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle]pathForResource:sender.titleLabel.text ofType:@"m4a"]];
    
    self.player = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURL error:nil];
    if(self.player)
    {
        player.numberOfLoops = 0;
    }

    player.currentTime = 0;
    player.play;
}

- (IBAction)stopNote:(UIButton *)sender {
    player.stop;
}


@end
