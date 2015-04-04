//
//  SignInAndUpViewController+SignInViewDelegate.m
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInAndUpViewController+SignInViewDelegate.h"
#import "SignInAndUpViewController+animation.h"
#import "HomeViewController.h"

@implementation SignInAndUpViewController (SignInViewDelegate)

- (void)SignInViewDidBack:(SignInView *)signInView {
    self.loginView.hidden = YES;
    [self animateAppearSignInAndUpView];
}

- (void)SignInViewDidLogin:(SignInView *)signInView {
    HomeViewController *homeViewController = [HomeViewController create];
    [self.navigationController pushViewController:homeViewController animated:YES];
}

@end
