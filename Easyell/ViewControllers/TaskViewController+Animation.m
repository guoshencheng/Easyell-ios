//
//  TaskViewController+Animation.m
//  Easyell
//
//  Created by guoshencheng on 4/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TaskViewController+Animation.h"

@implementation TaskViewController (Animation)

- (void)slideMemberPanelToHide {
    [UIView animateWithDuration:0.2 animations:^{
        [self.memberPanel setRightSpace:MEMBER_PANEL_WIDTH];
        [self.view layoutIfNeeded];
    } completion:nil];
}

- (void)slideMemberPanelToShow {
    [UIView animateWithDuration:0.2 animations:^{
        [self.memberPanel setRightSpace:0];
        [self.view layoutIfNeeded];
    } completion:nil];
}

@end
