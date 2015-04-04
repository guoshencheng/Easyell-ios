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
    [self sureLeftViewWithOffset:self.moveTableViewLeftConstraint.constant];
    [UIView animateWithDuration:0.2 animations:^{
        self.moveTableViewLeftConstraint.constant = LEFT_VIEW_WIDTH;
        self.moveTableViewRightConstraint.constant = -LEFT_VIEW_WIDTH;
        [self sureLeftViewWithOffset:LEFT_VIEW_WIDTH];
        [self layoutIfNeeded];
    }];
}

- (void)animateSlideMoveTableViewToLeft {
    [self sureLeftViewWithOffset:self.moveTableViewLeftConstraint.constant];
    [UIView animateWithDuration:0.2 animations:^{
        self.moveTableViewLeftConstraint.constant = 0;
        self.moveTableViewRightConstraint.constant = 0;
        [self sureLeftViewWithOffset:0];
        [self layoutIfNeeded];
    }];
}

- (void)sureLeftViewWithOffset:(CGFloat)offset {
    CGFloat radiants = offset * (M_PI / 2) / LEFT_VIEW_WIDTH;
    //CATransform3D transform = CATransform3DRotate(self.perspective, radiants - (M_PI / 2), 0, 1, 0);
    CATransform3D transform = CATransform3DTranslate(self.perspective, offset, 0, 0);
    //self.leftView.layer.transform = CATransform3DTranslate(transform, - offset, 0, 0);
    self.leftView.layer.transform = CATransform3DRotate(transform, radiants - (M_PI / 2), 0, 1, 0);
}

@end
