//
//  KEYViewController.m
//  Keyboard
//
//  Created by iOS Camp on 8/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KEYViewController.h"

@interface KEYViewController ()

@property (nonatomic, strong) AVAudioPlayer *playerC;
@property (nonatomic, strong) AVAudioPlayer *playerD;
@property (nonatomic, strong) AVAudioPlayer *playerE;
@property (nonatomic, strong) AVAudioPlayer *playerF;
@property (nonatomic, strong) AVAudioPlayer *playerG;
@property (nonatomic, strong) AVAudioPlayer *playerA;
@property (nonatomic, strong) AVAudioPlayer *playerB;
@property (nonatomic, strong) AVAudioPlayer *playerOctave;

@end

@implementation KEYViewController
@synthesize playerC;
@synthesize playerD;
@synthesize playerE;
@synthesize playerF;
@synthesize playerG;
@synthesize playerA;
@synthesize playerB;
@synthesize playerOctave;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSURL *fileURLC = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle]pathForResource:@"C" ofType:@"m4a"]];
    
    self.playerC = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURLC error:nil];
    if(self.playerC)
    {
        playerC.numberOfLoops = 0;
    }
    NSURL *fileURLD = [[NSURL alloc] initFileURLWithPath:[[NSBundle mainBundle]pathForResource:@"D" ofType:@"m4a"]];
    
    self.playerD = [[AVAudioPlayer alloc] initWithContentsOfURL:fileURLD error:nil];
    if(self.playerD)
    {
        playerD.numberOfLoops = 0;
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

- (IBAction)playNoteC:(UIButton *)sender {
    playerC.currentTime = 0;
    playerC.play;
}

- (IBAction)stopNoteC:(UIButton *)sender {
    playerC.stop;
}

- (IBAction)playNoteD:(UIButton *)sender {
    playerD.currentTime = 0;
    playerD.play;
}

- (IBAction)stopNoteD:(UIButton *)sender {
    playerD.stop;
}

- (IBAction)playNoteE:(UIButton *)sender {
}

- (IBAction)stopNoteE:(UIButton *)sender {
}

- (IBAction)playNoteF:(UIButton *)sender {
}

- (IBAction)stopNoteF:(UIButton *)sender {
}

- (IBAction)playNoteG:(UIButton *)sender {
}

- (IBAction)stopNoteG:(UIButton *)sender {
}

- (IBAction)playNoteA:(UIButton *)sender {
}

- (IBAction)stopNoteA:(UIButton *)sender {
}

- (IBAction)playNoteB:(UIButton *)sender {
}

- (IBAction)stopNoteB:(UIButton *)sender {
}

- (IBAction)playNoteOctave:(UIButton *)sender {
}

- (IBAction)stopNoteOctave:(UIButton *)sender {
}


@end
