//
//  SignInAndUpViewController+animation.m
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInAndUpViewController+animation.h"

@implementation SignInAndUpViewController (animation)

- (void)animateToMoveContainerViewFromTop:(CGFloat)length {
    [UIView animateWithDuration:0.2 animations:^{
        self.mainContainerViewTopContraint.constant = length;
        [self.view layoutIfNeeded];
    }];
}

@end
