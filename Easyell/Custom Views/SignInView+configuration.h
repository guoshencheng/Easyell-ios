//
//  SignInView+configuration.h
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInView.h"

@interface SignInView (configuration)

- (void)cleanTextFieldToAccount;
- (void)cleanTextFieldToPassword;

- (void)updateAccountLabelFromTextField;
- (void)updatePasswordLabelFromTextField;

@end
