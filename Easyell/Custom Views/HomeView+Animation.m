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
        [self layoutIfNeeded];
    }];
}

- (void)animateSlideMoveTableViewToLeft {
    [UIView animateWithDuration:0.2 animations:^{
        self.moveTableViewLeftConstraint.constant = 0;
        [self layoutIfNeeded];
    }];
}

@end
