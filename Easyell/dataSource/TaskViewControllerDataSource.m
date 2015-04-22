//
//  TaskViewController.m
//  Easyell
//
//  Created by guoshencheng on 4/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TaskViewControllerDataSource.h"

@implementation TaskViewControllerDataSource

#pragma mark - PublicMethod

- (NSString *)getTitleTextOfSection:(NSInteger)section {
    NSString *title = @"";
    switch (section) {
        case 0:
            title = @"Title";
            break;
        case 1:
            title = @"Decription";
            break;
        case 2:
            title = @"Members";
            break;
        case 3:
            title = @"Tasks";
            break;
        default:
            break;
    }
    return title;
}

#pragma mark UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
   return  self.tasks.count > 0 ? 4 : 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section < 3) {
        return 1;
    } else {
        return self.tasks.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TaskCellEnum item = [self itemOfIndexPath:indexPath];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[self reuseIdOfProcessCellEnum:item]];
    [self updateCell:cell andIndexPath:indexPath];
    return cell;
}

#pragma mark - PrivateMethod

- (void)updateCell:(UITableViewCell *)cell andIndexPath:(NSIndexPath *)indexPath {
    if ([cell isKindOfClass:[PublicTitleCell class]]) {
        [(PublicTitleCell *)cell updateTitleLabel:self.taskTitle];
    } else if ([cell isKindOfClass:[PublicDescriptionCell class]]) {
        [(PublicDescriptionCell *)cell updateDescriptionLabel:self.taskDescription];
    } else if ([cell isKindOfClass:[PublicMemberCell class]]) {
        [(PublicMemberCell *)cell updateWithMemberArray:self.members];
        if (self.configureMembersCellDelegateBlock) {
            self.configureMembersCellDelegateBlock((PublicMemberCell *)cell);
        }
    } else if ([cell isKindOfClass:[TaskTaskListCell class]]) {
        [(TaskTaskListCell *)cell updateWithTitle:@"titletitletitletitletitletitle" andDescription:@"DescriptionDescriptionDescriptionDescriptionDescription"];
    }
}

- (NSString *)reuseIdOfProcessCellEnum:(TaskCellEnum)item {
    NSString *reuseId = @"";
    switch (item) {
        case TaskTitleCell:
            reuseId = PUBLIC_TITLE_CELL;
            break;
        case TaskDescriptCell:
            reuseId = PUBLIC_DESCRIPTION_CELL;
            break;
        case TaskMemberCell:
            reuseId = PUBLIC_MEMBER_CELL;
            break;
        case TaskTaskCell:
            reuseId = TASK_TASKLIST_CELL;
            break;
        default:
            break;
    }
    return reuseId;
}

- (TaskCellEnum)itemOfIndexPath:(NSIndexPath *)indexPath {
    TaskCellEnum item;
    if (indexPath.section == 0) {
        item = TaskTitleCell;
    } else if (indexPath.section == 1) {
        item = TaskDescriptCell;
    } else if(indexPath.section == 2) {
        item = TaskMemberCell;
    } else {
        item = TaskTaskCell;
    }
    return item;
}

@end
