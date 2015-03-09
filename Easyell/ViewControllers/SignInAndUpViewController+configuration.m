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
    [self configureAccountView];
    [self configurePasswordView];
}

- (void)configureAccountView {
    self.accountView.layer.cornerRadius = 5;
    self.accountView.layer.borderWidth = 1;
    self.accountView.layer.borderColor = [[UIColor blackColor] CGColor];
    self.accountTextField.delegate = self;
}

- (void)configurePasswordView {
    self.passwordView.layer.cornerRadius = 5;
    self.passwordView.layer.borderWidth = 1;
    self.passwordView.layer.borderColor = [[UIColor blackColor] CGColor];
    self.passwordTextField.delegate = self;
}

@end
