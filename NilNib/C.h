//
//  C.h
//  NilNib
//
//  Created by StuFF mc on 13.09.11.
//  Copyright 2011 Pomcast.net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface C : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    UIButton *button;
    UIButton *buttonFromNib;
}

@property (nonatomic, retain) IBOutlet UIButton *button;
@property (nonatomic, retain) IBOutlet UIButton *buttonFromNib;

- (IBAction)showTableViewController:(id)sender;

@end

