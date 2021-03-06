//
//  ProjectViewController+animation.m
//  Easyell
//
//  Created by guoshencheng on 4/3/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProjectViewController+animation.h"

@implementation ProjectViewController (animation)

- (void)animateSlideTabView:(CGFloat)offset withCompletion:(void (^)(BOOL finished))completion {
    [UIView animateWithDuration:0.2 animations:^{
        self.tabViewLeftConstraint.constant = offset;
        [self.view layoutIfNeeded];
    } completion:completion];
}

- (void)slideToHideActivityPanelWithCompletion:(void (^)(BOOL))completion {
    [UIView animateWithDuration:0.2 animations:^{
        [self.activityPanel setRightSpace:290];
        [self.view layoutIfNeeded];
    } completion:completion];
}

- (void)slideToShowActivityPanelWithCompletion:(void (^)(BOOL))completion {
    [UIView animateWithDuration:0.2 animations:^{
        [self.activityPanel setRightSpace:0];
        [self.view layoutIfNeeded];
    } completion:completion];
}

@end
