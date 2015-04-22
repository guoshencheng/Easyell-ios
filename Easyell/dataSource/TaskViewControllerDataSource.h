//
//  TaskViewController.h
//  Easyell
//
//  Created by guoshencheng on 4/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProcessAndTaskSectionView.h"
#import "TaskTaskListCell.h"
#import "PublicMemberCell.h"
#import "PublicTitleCell.h"
#import "PublicDescriptionCell.h"
typedef enum {
    TaskTitleCell = 0,
    TaskDescriptCell = 1,
    TaskMemberCell = 2,
    TaskTaskCell = 3
} TaskCellEnum;

typedef void (^ConfigureMembersCellDelegateBlock) (PublicMemberCell *cell);

@interface TaskViewControllerDataSource : NSObject <UITableViewDataSource>
@property (strong, nonatomic) NSString *taskTitle;
@property (strong, nonatomic) NSString *taskDescription;
@property (strong, nonatomic) NSArray *members;
@property (strong, nonatomic) NSArray *tasks;
@property (strong, nonatomic) ConfigureMembersCellDelegateBlock configureMembersCellDelegateBlock;
- (NSString *)getTitleTextOfSection:(NSInteger)section;
@end
