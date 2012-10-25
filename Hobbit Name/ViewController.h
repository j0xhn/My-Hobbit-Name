//
//  ViewController.h
//  Hobbit Name
//
//  Created by Jordan Garn on 5/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface ViewController : UIViewController {
    ADBannerView *banner;
}

@property (nonatomic, assign)BOOL bannerIsVisible;
@property (nonatomic, retain)IBOutlet ADBannerView *banner;

- (IBAction)Start:(id)sender;
- (IBAction)startiPad:(id)sender;

@end
