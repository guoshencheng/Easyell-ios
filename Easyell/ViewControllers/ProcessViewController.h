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
#import "ColorLabelListPanel.h"

@interface ProcessViewController : UIViewController <UITableViewDelegate, SlideMotionDataSource, SlideMotionDelegate, ModifyTextViewControllerDelegate, ColorLabelListPanelDelegate>

@property (weak, nonatomic) IBOutlet UIView *topBarView;
@property (weak, nonatomic) IBOutlet UITableView *itemTableView;
@property (strong, nonatomic) ColorLabelListPanel *colorLabelListPanel;
@property (strong, nonatomic) SlideMotion *rightSlideMotion;
@property (strong, nonatomic) ProcessViewControllerDataSource *processViewControllerDataSource;
+ (instancetype)create;

@end
