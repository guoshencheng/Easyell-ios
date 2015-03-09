//
//  SignInView+animation.m
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInView+animation.h"
#import "SpringAnimationMaker.h"
#import "UIScreen+Utilities.h"
#import "SignInView+configuration.h"

@implementation SignInView (animation)

- (void)animateToInputAccountWithCompletion:(void (^)(BOOL finished))completion {
    [self animteAllViewsSlideDownWithCompletion:^(BOOL finished) {
        [UIView animateWithDuration:0.3 animations:^{
            self.accountViewConstraint.constant = self.inputView.frame.origin.x;
            [self layoutIfNeeded];
        } completion:^(BOOL finished) {
            [self animteShowInputViewFromAccountWithCompletion:completion];
        }];
    }];
}

- (void)animteBackAccountWithCompletion:(void (^)(BOOL finished))completion {
    [self animteHideInputViewFromAccountWithCompletion:^(BOOL finished) {
        self.inputView.hidden = YES;
        [UIView animateWithDuration:0.3 animations:^{
            self.accountViewConstraint.constant = -10;
            [self layoutIfNeeded];
        } completion:^(BOOL finished) {
            [self animteAllViewSlideBackWithCompletion:completion];
        }];
    }];
}

- (void)animteToShow {
    self.hidden = NO;
    SpringAnimationFinisher *finish = [SpringAnimationFinisher finisherForViews:@[self.accountView, self.passwordView, self.backView] offset:-10 block:^{
        self.accountViewConstraint.constant = -10;
        self.passwordViewConstraint.constant = -10;
        self.backViewConstraint.constant = -10;
        [self layoutIfNeeded];
        [SpringAnimationMaker removeAnimationFromViews:@[self.accountView, self.passwordView, self.backView]];
    }];
    [SpringAnimationMaker steppedLeftSpringSlideOut:@[self.accountView, self.passwordView, self.backView] xOffset:10 finishDelegate:finish];
}

- (void)animteToHideWithCompletion:(void (^)(BOOL finished))completion {
    [UIView animateWithDuration:0.2 animations:^{
        self.accountViewConstraint.constant = -300;
        [self layoutIfNeeded];
    }];
    [UIView animateWithDuration:0.2 delay:0.05 options:UIViewAnimationOptionCurveLinear animations:^{
        self.passwordViewConstraint.constant = -300;
        [self layoutIfNeeded];
    } completion:nil];
    [UIView animateWithDuration:0.2 delay:0.1 options:UIViewAnimationOptionCurveLinear animations:^{
        self.backViewConstraint.constant = -300;
        [self layoutIfNeeded];
    } completion:completion];
}

#pragma mark - PrivateMethod

- (void)animteAllViewsSlideDownWithCompletion:(void (^)(BOOL finished))completion {
    [UIView animateWithDuration:0.2 delay:0.0 options:UIViewAnimationOptionCurveEaseIn  animations:^{
        self.backViewTopConstraint.constant = self.frame.size.height;
        [self layoutIfNeeded];
    } completion:nil];
    [UIView animateWithDuration:0.2 delay:0.05 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.passwordViewTopConstraint.constant = self.frame.size.height;
        [self layoutIfNeeded];
    } completion:nil];
    [UIView animateWithDuration:0.2 delay:0.1 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.accountViewTopConstraint.constant = self.inputView.frame.origin.y;
        [self layoutIfNeeded];
    } completion:completion];
}

- (void)animteAllViewSlideBackWithCompletion:(void (^)(BOOL finished))completion {
    [UIView animateWithDuration:0.2 delay:0.0 options:UIViewAnimationOptionCurveEaseIn  animations:^{
        self.accountViewTopConstraint.constant = 100;
        [self layoutIfNeeded];
    } completion:nil];
    [UIView animateWithDuration:0.2 delay:0.05 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.passwordViewTopConstraint.constant = 210;
        [self layoutIfNeeded];
    } completion:nil];
    [UIView animateWithDuration:0.2 delay:0.1 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.backViewTopConstraint.constant = 320;
        [self layoutIfNeeded];
    } completion:completion];
}

- (void)animteShowInputViewFromAccountWithCompletion:(void (^)(BOOL finished))completion {
    self.accountView.alpha = 1;
    self.inputView.alpha = 0;
    self.inputView.hidden = NO;
    [UIView animateWithDuration:0.1 animations:^{
        self.accountView.alpha = 0;
        self.inputView.alpha = 1;
    } completion:completion];
}

- (void)animteHideInputViewFromAccountWithCompletion:(void (^)(BOOL finished))completion {
    self.accountView.alpha = 0;
    self.inputView.alpha = 1;
    self.accountView.hidden = NO;
    [UIView animateWithDuration:0.1 animations:^{
        self.accountView.alpha = 1;
        self.inputView.alpha = 0;
    } completion:completion];
}

@end
