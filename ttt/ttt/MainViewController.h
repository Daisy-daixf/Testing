//
//  MainViewController.h
//  ttt
//
//  Created by daixf on 3/19/13.
//  Copyright (c) 2013 daixf. All rights reserved.
//

#import "FlipsideViewController.h"

@interface  MainViewController : UIViewController <FlipsideViewControllerDelegate>

@property (strong, nonatomic) UIPopoverController *flipsidePopoverController;

- (IBAction)showInfo:(id)sender;

@end
