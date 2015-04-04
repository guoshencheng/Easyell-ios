//
//  SignInAndUpViewController+configuration.m
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInAndUpViewController+configuration.h"
#import "UIScreen+Utilities.h"

@implementation SignInAndUpViewController (configuration)

- (void)configureViews {
    self.view.bounds = [[UIScreen mainScreen] bounds];
    [self configureLoginView];
    [self configureRegisterView];
}

- (void)configureLoginView {
    self.loginView = [SignInView create];
    [self.view addSubview:self.loginView];
    self.loginView.delegate = self;
    self.loginView.hidden = YES;
    [self.loginView setLeftSpace:0];
    [self.loginView setTopSpace:0];
    [self.loginView setRightSpace:0];
    [self.loginView setBottomSpace:0];
    [self.view layoutIfNeeded];
}

- (void)configureRegisterView {
    self.registerView = [SignUpView create];
    [self.view addSubview:self.registerView];
    self.registerView.delegate = self;
    self.registerView.hidden = YES;
    [self.registerView setLeftSpace:0];
    [self.registerView setTopSpace:0];
    [self.registerView setRightSpace:0];
    [self.registerView setBottomSpace:0];
    [self.view layoutIfNeeded];
}

@end
