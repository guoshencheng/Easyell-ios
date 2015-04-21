//
//  ProcessViewController+ModifyTextViewControllerDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProcessViewController+ModifyTextViewControllerDelegate.h"

@implementation ProcessViewController (ModifyTextViewControllerDelegate)

- (void)modifyTextViewController:(ModifyTextViewController *)modifyTextViewController didClickSaveWithText:(NSString *)text {
    if (modifyTextViewController.type == ModifyTitle) {
        self.processViewControllerDataSource.processTitle = text;
    } else if (modifyTextViewController.type == ModifyDescription) {
        self.processViewControllerDataSource.processDescription = text;
    }
    [self.itemTableView reloadData];
}

@end
