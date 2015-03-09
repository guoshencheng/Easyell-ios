//
//  SignInAndUpViewController+animation.m
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInAndUpViewController+animation.h"
#import "SpringAnimationMaker.h"

@implementation SignInAndUpViewController (animation)

- (void)animateAppearSignInAndUpView {
    self.signInView.hidden = NO;
    self.signUpView.hidden = NO;
    SpringAnimationFinisher *finisher = [SpringAnimationFinisher finisherForViews:@[self.signInView, self.signUpView] offset:-10 block:^{
        self.signInViewLeftConstraint.constant = -10;
        self.signUpViewLeftConstraint.constant = -10;
        [self.view layoutIfNeeded];
        [SpringAnimationMaker removeAnimationFromViews:@[self.signInView, self.signUpView]];
    }];
    [SpringAnimationMaker steppedLeftSpringSlideOut:@[self.signInView, self.signUpView] xOffset:10 finishDelegate:finisher];
}

- (void)animateHideSignInAndUpWithCompletion:(void (^)(BOOL finished))completion {
    [UIView animateWithDuration:0.2 animations:^{
        self.signInViewLeftConstraint.constant = -300;
        [self.view layoutIfNeeded];
    }];
    [UIView animateWithDuration:0.2 delay:0.1 options:UIViewAnimationOptionCurveLinear animations:^{
        self.signUpViewLeftConstraint.constant = -300;
        [self.view layoutIfNeeded];
    } completion:completion];
}

- (void)animateShowSignIn {
    
}


- (void)animateShowSignUp {
    
}

@end
