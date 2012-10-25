//
//  ChooseGender.m
//  Hobbit Name
//
//  Created by Jordan Garn on 5/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ChooseGender.h"
#import "AppDelegate.h"

@implementation ChooseGender
@synthesize MaleClicked;
@synthesize FemaleButton;

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

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [self setMaleClicked:nil];
    [self setFemaleButton:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [MaleClicked release];
    [FemaleButton release];
    [super dealloc];
}
- (IBAction)MaleButtonClicked:(id)sender {
    ViewName *screen = [[ViewName alloc] initWithNibName:nil bundle:nil];
    screen.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    AppDelegate *dataCenter = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    dataCenter.gender = @"Male";
    
    [self presentModalViewController:screen animated:YES];
}

- (IBAction)FemaleButtonClicked:(id)sender {
    ViewName *screen = [[ViewName alloc] initWithNibName:nil bundle:nil];
    screen.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    AppDelegate *dataCenter = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    dataCenter.gender = @"Female";
    
    [self presentModalViewController:screen animated:YES];
}
@end
