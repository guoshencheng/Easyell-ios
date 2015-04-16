//
//  ItemOptionViewController+SlideMotion.m
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemOptionViewController+SlideMotion.h"
#import "ItemOptionViewController+Animation.h"

@implementation ItemOptionViewController (SlideMotion)

- (void)slideMotion:(SlideMotion *)slideMotion didSlideView:(UIView *)view withOffset:(CGFloat)offset {
    if (view == self.colorLabelListPanel) {
        [self.colorLabelListPanel setRightSpace:offset];
        [self.view layoutIfNeeded];
    } else if (view == self.memberPanel) {
        [self.memberPanel setRightSpace:offset];
        [self.view layoutIfNeeded];
    }
}

- (void)slideMotion:(SlideMotion *)slideMotion didEndSlideView:(UIView *)view {
    if (view == self.colorLabelListPanel) {
        if (self.colorLabelListPanel.rightSpace >= (COLOR_LABEL_LISTPANEL_WIDTH / 2)) {
            [self slideColorPanelToHide];
        } else {
            [self slideColorPanelToShow];
        }
    } else if (view == self.memberPanel) {
        if (self.memberPanel.rightSpace >= (MEMBER_PANEL_WIDTH / 2)) {
            [self slideMemberPanelToHide];
        } else {
            [self slideMemberPanelToShow];
        }
    }
}

@end
