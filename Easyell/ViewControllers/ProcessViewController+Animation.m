//
//  ProcessViewController+Animation.m
//  Easyell
//
//  Created by guoshencheng on 4/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProcessViewController+Animation.h"

@implementation ProcessViewController (Animation)

- (void)slideColorPanelToHide {
    [UIView animateWithDuration:0.2 animations:^{
        [self.colorLabelListPanel setRightSpace:COLOR_LABEL_LISTPANEL_WIDTH];
        [self.view layoutIfNeeded];
    } completion:nil];
}

- (void)slideColorPanelToShow {
    [UIView animateWithDuration:0.2 animations:^{
        [self.colorLabelListPanel setRightSpace:0];
        [self.view layoutIfNeeded];
    } completion:nil];
}

@end
