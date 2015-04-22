//
//  TaskTaskListCell.h
//  Easyell
//
//  Created by guoshencheng on 4/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#define TASK_TASKLIST_CELL @"TASK_TASKLIST_CELL"
@interface TaskTaskListCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *cellBackgourndView;
@property (weak, nonatomic) IBOutlet UILabel *taskTitle;
@property (weak, nonatomic) IBOutlet UILabel *taskDescription;
- (void)updateWithTitle:(NSString *)title andDescription:(NSString *)description;

@end
