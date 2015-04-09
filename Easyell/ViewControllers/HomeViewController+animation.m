//
//  HomeViewController+animation.m
//  Easyell
//
//  Created by guoshencheng on 4/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController+animation.h"

@implementation HomeViewController (animation)

- (void)slideHomeViewToLeft {
    [UIView animateWithDuration:0.2 animations:^{
        self.homeContrainerViewLeftConstraint.constant = 0;
        self.homeContainerViewRightConstraint.constant = 0;
        [self.settingsPanel setLeftSpace:-LEFT_VIEW_WIDTH /2];
        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        
    }];
}

- (void)slideHomeViewToRight {
    [UIView animateWithDuration:0.2 animations:^{
        self.homeContrainerViewLeftConstraint.constant = LEFT_VIEW_WIDTH;
        self.homeContainerViewRightConstraint.constant = -LEFT_VIEW_WIDTH;
        [self.settingsPanel setLeftSpace:0];
        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        
    }];
}

@end
