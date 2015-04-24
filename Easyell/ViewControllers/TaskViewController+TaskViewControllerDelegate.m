//
//  TaskViewController+TaskViewControllerDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/24/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TaskViewController+TaskViewControllerDelegate.h"
#import "ProcessViewController.h"

@implementation TaskViewController (TaskViewControllerDelegate)

- (void)processAndTaskSectionViewDidClickRightButton:(ProcessAndTaskSectionView *)processAndTaskSectionView {
    ProcessViewController *processViewController = [ProcessViewController create];
    processViewController.editable = NO;
    [self.navigationController pushViewController:processViewController animated:YES];
}

@end
