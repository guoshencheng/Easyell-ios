//
//  SignUpView+configuration.h
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignUpView.h"
#define SMALLSCEEN_DECREASE  30
@interface SignUpView (configuration)

- (void)configureViews;
- (void)cleanTextFieldToUserName;
- (void)cleanTextFieldToPassword;
- (void)cleanTextFieldToAccount;
- (void)updateAccountLabelFromTextField;
- (void)updateUsernameLabelFromTextField;
- (void)updatePasswordLabelFromTextField;

- (CGFloat)getDefaultValueOfView:(UIView *)view;
- (CGFloat)getDefaultValueOfConstraint:(NSLayoutConstraint *)constraint;

@end
