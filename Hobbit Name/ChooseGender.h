//
//  ChooseGender.h
//  Hobbit Name
//
//  Created by Jordan Garn on 5/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChooseGender : UIViewController{
    ADBannerView *banner;
}

@property (nonatomic, assign)BOOL bannerIsVisible;
@property (nonatomic, retain)IBOutlet ADBannerView *banner;

@property (retain, nonatomic) IBOutlet UIButton *MaleClicked;
@property (retain, nonatomic) IBOutlet UIButton *FemaleButton;
- (IBAction)MaleButtonClicked:(id)sender;
- (IBAction)FemaleButtonClicked:(id)sender;

@end
