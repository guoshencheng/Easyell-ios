//
//  SignInAndUpViewController+animation.h
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInAndUpViewController.h"

@interface SignInAndUpViewController (animation)

- (void)animateAppearSignInAndUpView;
- (void)animateHideSignInAndUpWithCompletion:(void (^)(BOOL finished))completion;

@end
