//
//  TaskViewController.h
//  Easyell
//
//  Created by guoshencheng on 4/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TaskViewControllerDataSource.h"
#import "ModifyTextViewController.h"
#import "MemberPanel.h"
#import "SlideMotion.h"

@protocol TaskViewControllerDelegate;
@interface TaskViewController : UIViewController <UITableViewDelegate, ModifyTextViewControllerDelegate, SlideMotionDataSource, SlideMotionDelegate, MemberPanelDelegate, PublicMemberCellDelegate>

@property (weak, nonatomic) IBOutlet UILabel *rightLabel;
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UITableView *itemTableView;
@property (strong, nonatomic) MemberPanel *memberPanel;
@property (strong, nonatomic) SlideMotion *rightSlideMotion;
@property (assign, nonatomic) BOOL editable;
@property (strong, nonatomic) TaskViewControllerDataSource *taskViewControllerDataSource;
+ (instancetype)create;

@end
@protocol TaskViewControllerDelegate <NSObject>
@optional
- (void)taskViewController:(TaskViewController *)taskViewController didSaveWithTitle:(NSString *)title andMembers:(NSArray *)members;

@end