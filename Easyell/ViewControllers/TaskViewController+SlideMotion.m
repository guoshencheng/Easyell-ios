//
//  TaskViewController+SlideMotion.m
//  Easyell
//
//  Created by guoshencheng on 4/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TaskViewController+SlideMotion.h"
#import "TaskViewController+Animation.h"

@implementation TaskViewController (SlideMotion)

- (void)slideMotion:(SlideMotion *)slideMotion didSlideView:(UIView *)view withOffset:(CGFloat)offset {
    [self.memberPanel setRightSpace:offset];
    [self.view layoutIfNeeded];
}

- (void)slideMotion:(SlideMotion *)slideMotion didEndSlideView:(UIView *)view {
    if (self.memberPanel.rightSpace >= (MEMBER_PANEL_WIDTH / 2)) {
        [self slideMemberPanelToHide];
    } else {
        [self slideMemberPanelToShow];
    }
}

@end
