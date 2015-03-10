//
//  SignInView+configuration.m
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInView+configuration.h"

@implementation SignInView (configuration)

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

@end
