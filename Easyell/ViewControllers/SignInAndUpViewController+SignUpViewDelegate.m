//
//  SignInAndUpViewController+SignUpViewDelegate.m
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInAndUpViewController+SignUpViewDelegate.h"
#import "SignInAndUpViewController+animation.h"

@implementation SignInAndUpViewController (SignUpDelegate)

- (void)SignUpViewDidBack {
    self.registerView.hidden = YES;
    [self animateAppearSignInAndUpView];
}

@end
