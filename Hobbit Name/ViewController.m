//
//  ViewController.m
//  Hobbit Name
//
//  Created by Jordan Garn on 5/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize banner, bannerIsVisible;

- (void)bannerViewDidLoadAd:(ADBannerView *) abanner {
    if (!self.bannerIsVisible) {
        [UIView beginAnimations:@"animatedAdBannerOn" context:NULL];
        banner.frame = CGRectOffset(banner.frame, 0.0, 50.0);
        [UIView commitAnimations];
        self.bannerIsVisible = YES;
    }
}

- (void) bannerView:(ADBannerView *) abanner
didFailToRecieveAdWithError:(NSError *) error{
    if(!self.bannerIsVisible){
        [UIView beginAnimations:@"animatedAdBannerOff" context:NULL];
        banner.frame = CGRectOffset(banner.frame, 0.0, -320.0);
        [UIView commitAnimations];
        self.bannerIsVisible = NO;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)Start:(id)sender {
    ChooseGender *screen = [[ChooseGender alloc] initWithNibName:nil bundle:nil];
    screen.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    [self presentModalViewController:screen animated:YES];
}

- (IBAction)startiPad:(id)sender {
    ChooseGender *screen = [[ChooseGender alloc] initWithNibName:nil bundle:nil];
    screen.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    [self presentModalViewController:screen animated:YES];
}
@end
