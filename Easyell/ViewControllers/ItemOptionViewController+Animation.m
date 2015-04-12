//
//  ItemOptionViewController+Animation.m
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemOptionViewController+Animation.h"

@implementation ItemOptionViewController (Animation)

- (void)slideColorPanelToHide {
    [UIView animateWithDuration:0.2 animations:^{
        [self.colorLabelListPanel setRightSpace:280];
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
