//
//  T.h
//  NilNib
//
//  Created by StuFF mc on 13.09.11.
//  Copyright 2011 Pomcast.net. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface T : UITableViewController <UITableViewDelegate, UITableViewDataSource> {
    UIButton *button;
}

@property (nonatomic, retain) IBOutlet UIButton *button;

@end
