//
//  TaskViewController+UITableViewDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TaskViewController+UITableViewDelegate.h"
#import "TaskViewController+Animation.h"

@implementation TaskViewController (UITableViewDelegate)

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.taskViewControllerDataSource tableView:tableView cellForRowAtIndexPath:indexPath];
    return cell.frame.size.height;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.editable) {
        return indexPath;
    } else {
        if (indexPath.section == 3) {
            return indexPath;
        } else {
            return nil;
        }
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.section == 0) {
        [self didClickTitleCell];
    } else if (indexPath.section == 1) {
        [self didClickDescriptionCell];
    } else if (indexPath.section == 3) {
        TaskViewController *taskViewController = [TaskViewController create];
        taskViewController.editable = NO;
        [self.navigationController pushViewController:taskViewController animated:YES];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 45;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section  {
    ProcessAndTaskSectionView *view = [tableView dequeueReusableHeaderFooterViewWithIdentifier:PROCESS_SECTION_VIEW];
    [view updateWithTitle:[self.taskViewControllerDataSource getTitleTextOfSection:section] andActionTitle:((section == 3) ? @"Look detail" :  nil )];
    view.delegate = self;
    return view;
}

- (void)didClickTitleCell {
    ModifyTextViewController *modifyTextViewController = [ModifyTextViewController create];
    modifyTextViewController.text = self.taskViewControllerDataSource.taskTitle;
    modifyTextViewController.type = ModifyTitle;
    modifyTextViewController.delegate = self;
    [self.navigationController pushViewController:modifyTextViewController animated:YES];
}

- (void)didClickDescriptionCell {
    ModifyTextViewController *modifyTextViewController = [ModifyTextViewController create];
    modifyTextViewController.text = self.taskViewControllerDataSource.taskDescription;
    modifyTextViewController.type = ModifyDescription;
    modifyTextViewController.delegate = self;
    [self.navigationController pushViewController:modifyTextViewController animated:YES];
}

@end
