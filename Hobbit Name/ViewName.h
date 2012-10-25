//
//  ViewName.h
//  Hobbit Name
//
//  Created by Jordan Garn on 5/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
asdf
@interface ViewName : UIViewController
@property (retain, nonatomic) IBOutlet UILabel *HobbitName;
- (IBAction)NewName:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *RandomNameButton;
- (IBAction)StartOver:(id)sender;
@property (retain, nonatomic) IBOutlet UITextField *NameBox;
@property (retain, nonatomic) IBOutlet UILabel *NameLabel;
- (IBAction)DoneEditing:(id)sender;
- (IBAction)OutsideEditor:(id)sender;
- (IBAction)TextDone:(id)sender;
- (IBAction)BeginEditing:(id)sender;
@property (retain, nonatomic) IBOutlet UIButton *DoneEditingText;
@property (retain, nonatomic) IBOutlet UILabel *HobbitNameIs;
@property (retain, nonatomic) IBOutlet UIImageView *NameScroll;
- (IBAction)TouchDragEnter:(id)sender;
- (IBAction)FinishedEditing:(id)sender;
- (IBAction)Share:(id)sender;

@end
