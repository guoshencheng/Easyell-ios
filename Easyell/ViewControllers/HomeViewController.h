//
//  HomeViewController.h
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroupListDataSource.h"
#import "SlideMotion.h"
#import "SettingsPanel.h"
#define LEFT_VIEW_WIDTH 260
@interface HomeViewController : UIViewController <UIScrollViewDelegate, UITableViewDelegate ,SlideMotionDataSource, SlideMotionDelegate>
@property (weak, nonatomic) IBOutlet UITableView *groupTableView;
@property (weak, nonatomic) IBOutlet UIView *homeContrainerView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *homeContrainerViewLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *homeContainerViewRightConstraint;
@property (strong, nonatomic) SettingsPanel *settingsPanel;
@property (strong, nonatomic) SlideMotion *horizontalSlideMotion;
@property (strong, nonatomic) GroupListDataSource *groupListDataSource;
@property (strong, nonatomic) NSArray *group;

+ (id)create;

@end
