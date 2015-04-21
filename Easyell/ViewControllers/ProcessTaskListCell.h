//
//  ProcessTaskListCell.h
//  Easyell
//
//  Created by guoshencheng on 4/20/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HighlightableTableCell.h"

#define PROCESS_TASKLIST_CELL @"PROCESS_TASKLIST_CELL"

@interface ProcessTaskListCell : UITableViewCell <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *memberCollectionView;
@property (weak, nonatomic) IBOutlet UILabel *taskTitleLabel;
@property (weak, nonatomic) IBOutlet UIView *addTaskView;
@property (weak, nonatomic) IBOutlet UIView *taskView;
@property (weak, nonatomic) IBOutlet UILabel *addTaskLabel;
@property (strong, nonatomic) NSArray *members;

- (void)updateWithMembers:(NSArray *)members andTaskTtile:(NSString *)taskTitle;
- (void)updateToAddTaskButton;

@end
