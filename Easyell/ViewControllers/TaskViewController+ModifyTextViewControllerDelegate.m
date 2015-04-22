//
//  TaskViewController+ModifyTextViewControllerDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TaskViewController+ModifyTextViewControllerDelegate.h"

@implementation TaskViewController (ModifyTextViewControllerDelegate)

- (void)modifyTextViewController:(ModifyTextViewController *)modifyTextViewController didClickSaveWithText:(NSString *)text {
    if (modifyTextViewController.type == ModifyTitle) {
        self.taskViewControllerDataSource.taskTitle = text;
    } else if (modifyTextViewController.type == ModifyDescription) {
        self.taskViewControllerDataSource.taskDescription = text;
    }
    [self.itemTableView reloadData];
}


@end
