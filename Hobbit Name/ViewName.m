//
//  ViewName.m
//  Hobbit Name
//
//  Created by Jordan Garn on 5/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewName.h"
#import "AppDelegate.h"

@implementation ViewName
@synthesize DoneEditingText;
@synthesize HobbitNameIs;
@synthesize NameScroll;
@synthesize NameBox;
@synthesize NameLabel;
@synthesize RandomNameButton;
@synthesize HobbitName;

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
    
    //AppDelegate *dataCenter = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    
    
        HobbitName.hidden = true;
    RandomNameButton.hidden = true;
    HobbitNameIs.hidden = true;
    NameScroll.hidden = true;
    
    self.NameBox.delegate = self;
    
}

- (void)viewDidUnload
{
    [self setHobbitName:nil];
    [self setRandomNameButton:nil];
    [self setNameBox:nil];
    [self setNameLabel:nil];
    [self setDoneEditingText:nil];
    [self setHobbitNameIs:nil];
    [self setNameScroll:nil];
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
    [HobbitName release];
    [RandomNameButton release];
    [NameBox release];
    [NameLabel release];
    [DoneEditingText release];
    [HobbitNameIs release];
    [NameScroll release];
    [super dealloc];
}
- (IBAction)NewName:(id)sender {
    int randNumber = arc4random() % 84;
    int randLast = arc4random() % 58;
    
    AppDelegate *dataCenter = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    
    HobbitName.hidden = false;
    RandomNameButton.hidden =true;
    NameBox.hidden = true;
    NameLabel.hidden = true;
    DoneEditingText.hidden = true;
    HobbitNameIs.hidden = false;
    NameScroll.hidden = false;
    
    NSArray *HobbitNamesArray = [NSArray arrayWithObjects:
                                 @"Adalgrim",
                                 @"Adelard",
                                 @"Andwise",
                                 @"Balbo",
                                 @"Bandobras",
                                 @"Bilbo",
                                 @"Bodo",
                                 @"Bowman",
                                 @"Bucca",
                                 @"Bungo",
                                 @"Chubbs",
                                 @"Cotman",
                                 @"Cottar",
                                 @"Déagol",
                                 @"Doderic",
                                 @"Drogo",
                                 @"Elfstan",
                                 @"Erling",
                                 @"Everard",
                                 @"Falco",
                                 @"Faramir",
                                 @"Fastolph",
                                 @"Fastred",
                                 @"Ferdibrand",
                                 @"Ferdinand",
                                 @"Ferumbras",
                                 @"Filibert",
                                 @"Flambard",
                                 @"Fortinbras",
                                 @"Fosco",
                                 @"Fredegar",
                                 @"Frodo",
                                 @"Gerontius",
                                 @"Gorbadoc",
                                 @"Gorbulas",
                                 @"Gorhendad",
                                 @"Gormadoc",
                                 @"Griffo",
                                 @"Halfast",
                                 @"Halfred",
                                 @"Hamson",
                                 @"Hildifons",
                                 @"Hildigrim",
                                 @"Hob",
                                 @"Holfast",
                                 @"Hugo",
                                 @"Isengrim",
                                 @"Largo",
                                 @"Lotho",
                                 @"Madoc",
                                 @"Marcho",
                                 @"Marroc",
                                 @"Merimas",
                                 @"Merry",
                                 @"Milo",
                                 @"Minto",
                                 @"Mosco",
                                 @"Mungo",
                                 @"Nob",
                                 @"Nibs",
                                 @"Odo",
                                 @"Odovacar",
                                 @"Olo",
                                 @"Orgulas",
                                 @"Otho",
                                 @"Paladin",
                                 @"Peregrin",
                                 @"Pippin",
                                 @"Polo",
                                 @"Ponto",
                                 @"Posco",
                                 @"Reginard",
                                 @"Rorimac",
                                 @"Rowan",
                                 @"Rudigar",
                                 @"Rufus",
                                 @"Samwise",
                                 @"Sancho",
                                 @"Saradoc",
                                 @"Seredic",
                                 @"Sigismond",
                                 @"Sméagol",
                                 @"Tobold",
                                 @"Togo",
                                 @"Tolman",
                                 @"Wilibald", nil];
    NSArray *HobbitFemaleNamesArray = [NSArray arrayWithObjects:
                                       @"Adaldrida",
                                       @"Adamanta",
                                       @"Amaranth",
                                       @"Angelica",
                                       @"Asphodel",
                                       @"Belba",
                                       @"Bell",
                                       @"Belladonna",
                                       @"Berylla",
                                       @"Camellia",
                                       @"Celandine",
                                       @"Chica",
                                       @"Daisy",
                                       @"Dinodas",
                                       @"Donnamira",
                                       @"Dora",
                                       @"Eglantine",
                                       @"Elanor",
                                       @"Esmeralda",
                                       @"Estella",
                                       @"Fíriel",
                                       @"Gilly",
                                       @"Hanna",
                                       @"Hilda",
                                       @"Hildibrand",
                                       @"Ilberic",
                                       @"Isembard",
                                       @"Lalia",
                                       @"Laura",
                                       @"Lily",
                                       @"Linda",
                                       @"Lobelia",
                                       @"Malva",
                                       @"Marigold",
                                       @"Marmadas",
                                       @"Marmadoc",
                                       @"May",
                                       @"Melilot",
                                       @"Menegilda",
                                       @"Mentha",
                                       @"Meriadoc",
                                       @"Merimac",
                                       @"Mimosa",
                                       @"Mirabella",
                                       @"Moro",
                                       @"Myrtle",
                                       @"Pansy",
                                       @"Pearl",
                                       @"Peony",
                                       @"Pervinca",
                                       @"Pimpernel",
                                       @"Poppy",
                                       @"Primrose",
                                       @"Primula",
                                       @"Prisca",
                                       @"Robin",
                                       @"Rosa",
                                       @"Rosamunda",
                                       @"Rose",
                                       @"Ruby",
                                       @"Sadoc",
                                       @"Salvia",
                                       @"Saradas",
                                       @"Tanta",
                                       @"Wilcome", nil];
                                 
    NSArray *HobbitLastNamesArray = [NSArray arrayWithObjects:
                                     @"Baggins",
                                     @"Banks",
                                     @"Boffin",
                                     @"Bolger",
                                     @"Bophîn",
                                     @"Bracegirdle",
                                     @"Brandagamba",
                                     @"Brandybuck",
                                     @"Brockhouse",
                                     @"Brown",
                                     @"Brownlock",
                                     @"Bunce",
                                     @"Burrowes",
                                     @"Burrows",
                                     @"Butcher",
                                     @"Clayhanger",
                                     @"Cotton",
                                     @"Diggle",
                                     @"Fairbairn",
                                     @"Fallohide",
                                     @"Galbasi",
                                     @"Galpsi",
                                     @"Gamgee",
                                     @"Gammidge",
                                     @"Gamwich",
                                     @"Gardner",
                                     @"Gawkroger",
                                     @"Goldworthy",
                                     @"Goodbody",
                                     @"Goold",
                                     @"Greenhand",
                                     @"Harfoot",
                                     @"Hayward",
                                     @"Hlothran",
                                     @"Hogg",
                                     @"Labingi",
                                     @"Lightfoot",
                                     @"Longholes",
                                     @"Maggot",
                                     @"Mugwort",
                                     @"Noakes",
                                     @"North-tooks",
                                     @"Oldbuck",
                                     @"Pott",
                                     @"Proudfoot",
                                     @"Puddifoot",
                                     @"Roper",
                                     @"Sackville",
                                     @"Sandheaver",
                                     @"Sandyman",
                                     @"Smallburrow",
                                     @"Stoor",
                                     @"Took",
                                     @"Tûk",
                                     @"Tunnelly",
                                     @"Twofoot",
                                     @"Townsend",
                                     @"Underhill",
                                     @"Whitfoot", nil];
    /*
     NSLog(@"%@", HobbitNamesArray);
     NSLog(@"%@", [HobbitNamesArray objectAtIndex:randNumber]);
     NSLog(@"The Number: %d", randNumber); */
    
    
    
    NSString *TheName = [HobbitNamesArray objectAtIndex:randNumber];
    if (dataCenter.gender == @"Female") {
        TheName = [HobbitFemaleNamesArray objectAtIndex:randNumber];
    }
    NSString *TheLastName = [HobbitLastNamesArray objectAtIndex:randLast];
    NSString *FullName = [NSString stringWithFormat:@"%@ %@", TheName, TheLastName];
    
    
    HobbitName.text = [[NSString alloc] initWithFormat: @"%@", FullName];
}
- (IBAction)StartOver:(id)sender {
    
    ChooseGender *screen = [[ChooseGender alloc] initWithNibName:nil bundle:nil];
    screen.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    [self presentModalViewController:screen animated:YES];
    
}
- (IBAction)DoneEditing:(id)sender {
}

- (IBAction)OutsideEditor:(id)sender {
    [NameBox resignFirstResponder];
}

- (IBAction)TextDone:(id)sender {
    [NameBox resignFirstResponder];
    RandomNameButton.hidden = false;
}

- (IBAction)BeginEditing:(id)sender {
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event 
{
    RandomNameButton.hidden = false;
    [NameBox resignFirstResponder];
}

- (IBAction)TouchDragEnter:(id)sender {
    [NameBox resignFirstResponder];
}

- (IBAction)FinishedEditing:(id)sender {
    [NameBox resignFirstResponder];
}

- (IBAction)Share:(id)sender {
 
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    RandomNameButton.hidden = false;
    return NO;
}

@end
