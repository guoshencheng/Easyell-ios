//
//  SignInAndUpViewController+SignInViewDelegate.m
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInAndUpViewController+SignInViewDelegate.h"
#import "SignInAndUpViewController+animation.h"

@implementation SignInAndUpViewController (SignInViewDelegate)

- (void)SignInViewDidBack {
    self.loginView.hidden = YES;
    [self animateAppearSignInAndUpView];
}

@end
