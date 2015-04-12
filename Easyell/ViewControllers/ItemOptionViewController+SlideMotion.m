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
    [self.colorLabelListPanel setRightSpace:offset];
    [self.view layoutIfNeeded];
}

- (void)slideMotion:(SlideMotion *)slideMotion didEndSlideView:(UIView *)view {
    if (self.colorLabelListPanel.rightSpace >= (COLOR_LABEL_LISTPANEL_WIDTH / 2)) {
        [self slideColorPanelToHide];
    } else {
        [self slideColorPanelToShow];
    }
}

@end
