//
//  C.m
//  NilNib
//
//  Created by StuFF mc on 13.09.11.
//  Copyright 2011 Pomcast.net. All rights reserved.
//

#import "C.h"
#import "T.h"

@implementation C
@synthesize button;
@synthesize buttonFromNib;

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
    [self.button setTitle:@"Nil" forState:UIControlStateNormal];
}

- (void)viewDidUnload
{
    [self setButton:nil];
    [self setButtonFromNib:nil];
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
    [button release];
    [buttonFromNib release];
    [super dealloc];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellIdentifier] autorelease];
    }
    return cell;
}

- (IBAction)showTableViewController:(id)sender {
    NSString *nibName = nil;
    if (sender == buttonFromNib) {
        nibName = @"T";
    }
    T *controller = [[T alloc] initWithNibName:nibName bundle:nil];
    [self presentModalViewController:controller animated:NO];
    [controller release];
}

@end
