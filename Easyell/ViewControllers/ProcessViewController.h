//
//  ProcessViewController.h
//  Easyell
//
//  Created by guoshencheng on 4/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SlideMotion.h"
#import "ProcessViewControllerDataSource.h"
#import "ModifyTextViewController.h"

@interface ProcessViewController : UIViewController <UITableViewDelegate, SlideMotionDataSource, SlideMotionDelegate, ModifyTextViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UIView *topBarView;
@property (weak, nonatomic) IBOutlet UITableView *itemTableView;
@property (strong, nonatomic) ProcessViewControllerDataSource *processViewControllerDataSource;
+ (instancetype)create;

@end
