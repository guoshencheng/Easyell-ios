//
//  SignUpView+configuration.m
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignUpView+configuration.h"
#import "UIScreen+Utilities.h"

@implementation SignUpView (configuration)

- (void)configureViews {
    [self configureAccountView];
    [self configureBackView];
    [self configurePasswordView];
    [self configureUsernameView];
    [self configureInputView];
}

- (void)cleanTextFieldToAccount {
    self.inputTextField.text = @"";
    self.inputTextField.placeholder = @"Account";
    self.inputTextField.secureTextEntry = NO;
}

- (void)cleanTextFieldToPassword {
    self.inputTextField.text = @"";
    self.inputTextField.placeholder = @"Password";
    self.inputTextField.secureTextEntry = YES;
}

- (void)cleanTextFieldToUserName {
    self.inputTextField.text = @"";
    self.inputTextField.placeholder = @"Username";
    self.inputTextField.secureTextEntry = NO;
}

- (void)updateAccountLabelFromTextField {
    [self.inputTextField resignFirstResponder];
    if (![self.inputTextField.text isEqual:@""]) {
        self.accountLabel.text = self.inputTextField.text;
    } else {
        self.accountLabel.text = @"Account";
    }
}

- (void)updatePasswordLabelFromTextField {
    [self.inputTextField resignFirstResponder];
    if (![self.inputTextField.text isEqual:@""]) {
        self.passwordLabel.text = self.inputTextField.text;
    } else {
        self.passwordLabel.text = @"Password";
    }
}

- (void)updateUsernameLabelFromTextField {
    [self.inputTextField resignFirstResponder];
    if (![self.inputTextField.text isEqual:@""]) {
        self.usernameLabel.text = self.inputTextField.text;
    } else {
        self.usernameLabel.text = @"Username";
    }
}

- (CGFloat)getDefaultValueOfView:(UIView *)view {
    if ([view isEqual:self.accountView]) {
        return [UIScreen isSmallScreen] ? (100 - SMALLSCEEN_DECREASE) : 100;
    } else if([view isEqual:self.usernameView]) {
        return [UIScreen isSmallScreen] ? (200 - SMALLSCEEN_DECREASE) : 200;
    } else if ([view isEqual:self.passwordView]) {
        return [UIScreen isSmallScreen] ? (300 - SMALLSCEEN_DECREASE) : 300;
    } else {
        return [UIScreen isSmallScreen] ? (400 - SMALLSCEEN_DECREASE) : 400;
    }
}

- (CGFloat)getDefaultValueOfConstraint:(NSLayoutConstraint *)constraint {
    if ([constraint isEqual:self.accountTopConstraint]) {
        return [UIScreen isSmallScreen] ? (100 - SMALLSCEEN_DECREASE) : 100;
    } else if([constraint isEqual:self.usernameTopConstraint]) {
        return [UIScreen isSmallScreen] ? (200 - SMALLSCEEN_DECREASE) : 200;
    } else if ([constraint isEqual:self.passwordTopConstraint]) {
        return [UIScreen isSmallScreen] ? (300 - SMALLSCEEN_DECREASE) : 300;
    } else {
        return [UIScreen isSmallScreen] ? (400 - SMALLSCEEN_DECREASE) : 400;
    }
}

- (void)configureAccountView {
    if ([UIScreen isSmallScreen]) {
        self.accountTopConstraint.constant = 100 - SMALLSCEEN_DECREASE;
        [self layoutIfNeeded];
    }
}

- (void)configurePasswordView {
    if ([UIScreen isSmallScreen]) {
        self.passwordTopConstraint.constant = 300 - SMALLSCEEN_DECREASE;
        [self layoutIfNeeded];
    }
}

- (void)configureUsernameView {
    if ([UIScreen isSmallScreen]) {
        self.usernameTopConstraint.constant = 200 - SMALLSCEEN_DECREASE;
        [self layoutIfNeeded];
    }
}

- (void)configureBackView {
    if ([UIScreen isSmallScreen]) {
        self.backViewTopConstraint.constant = 400 - SMALLSCEEN_DECREASE;
        [self layoutIfNeeded];
    }
}

- (void)configureInputView {
    self.inputView.hidden = YES;
}

@end
