//
//  HomeView+Animation.m
//  Easyell
//
//  Created by guoshencheng on 3/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeView+Animation.h"

@implementation HomeView (Animation)

- (void)animateSlideMoveTableViewToRight {
    [UIView animateWithDuration:0.2 animations:^{
        self.moveTableViewLeftConstraint.constant = 50;
        [self sureLeftViewWithOffset:50];
        [self layoutIfNeeded];
    }];
}

- (void)animateSlideMoveTableViewToLeft {
    [UIView animateWithDuration:0.2 animations:^{
        self.moveTableViewLeftConstraint.constant = 0;
        [self sureLeftViewWithOffset:0];
        [self layoutIfNeeded];
    }];
}

- (void)sureLeftViewWithOffset:(CGFloat)offset {
    CGFloat radiants = offset * (M_PI / 2) / 50 + M_PI;
    self.leftView.layer.transform = CATransform3DRotate(self.perspective, radiants - (M_PI / 2), 0, 1, 0);
}

@end
