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
    [self animateAllViewsSlideDownWithCompletion:^(BOOL finished) {
        [UIView animateWithDuration:0.3 animations:^{
            self.accountViewConstraint.constant = self.inputView.frame.origin.x;
            [self layoutIfNeeded];
        } completion:^(BOOL finished) {
            [self animateShowInputViewFromView:self.accountView completion:completion];
        }];
    }];
}

- (void)animateBackAccountWithCompletion:(void (^)(BOOL finished))completion {
    [self animateHideInputViewFromView:self.accountView completion:^(BOOL finished) {
        self.inputView.hidden = YES;
        [UIView animateWithDuration:0.3 animations:^{
            self.accountViewConstraint.constant = -10;
            [self layoutIfNeeded];
        } completion:^(BOOL finished) {
            [self animateAllViewSlideBackWithCompletion:completion];
        }];
    }];
}

- (void)animateToInputPasswordWithCompletion:(void (^)(BOOL finished))completion {
    [self animateAllViewsSlideSpreadWithCompletion:^(BOOL finished) {
       [UIView animateWithDuration:0.3 animations:^{
           self.passwordViewConstraint.constant = self.inputView.frame.origin.x;
           [self layoutIfNeeded];
       } completion:^(BOOL finished) {
           [self animateShowInputViewFromView:self.passwordView completion:completion];
       }];
    }];
}

- (void)animateBackPasswordtWithCompletion:(void (^)(BOOL finished))completion {
    [self animateHideInputViewFromView:self.passwordView completion:^(BOOL finished) {
        self.inputView.hidden = YES;
        [UIView animateWithDuration:0.3 animations:^{
            self.passwordViewConstraint.constant = -10;
            [self layoutIfNeeded];
        } completion:^(BOOL finished) {
            [self animateAllViewSlideTogetherWithCompletion:completion];
        }];
    }];
}

- (void)animateToShow {
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

- (void)animateToHideWithCompletion:(void (^)(BOOL finished))completion {
    [UIView animateWithDuration:0.2 animations:^{
        self.accountViewConstraint.constant = -290;
        [self layoutIfNeeded];
    }];
    [UIView animateWithDuration:0.2 delay:0.05 options:UIViewAnimationOptionCurveLinear animations:^{
        self.passwordViewConstraint.constant = -290;
        [self layoutIfNeeded];
    } completion:nil];
    [UIView animateWithDuration:0.2 delay:0.1 options:UIViewAnimationOptionCurveLinear animations:^{
        self.backViewConstraint.constant = -310;
        [self layoutIfNeeded];
    } completion:completion];
}

#pragma mark - PrivateMethod

- (void)animateAllViewsSlideSpreadWithCompletion:(void (^)(BOOL finished))completion {
    [UIView animateWithDuration:0.2 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.backViewTopConstraint.constant = self.frame.size.height;
        self.accountViewTopConstraint.constant = - self.accountView.frame.size.height;
        [self layoutIfNeeded];
    } completion:nil];
    [UIView animateWithDuration:0.2 delay:0.1 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.passwordViewTopConstraint.constant = self.inputView.frame.origin.y;
        [self layoutIfNeeded];
    } completion:completion];
}

- (void)animateAllViewsSlideDownWithCompletion:(void (^)(BOOL finished))completion {
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

- (void)animateAllViewSlideBackWithCompletion:(void (^)(BOOL finished))completion {
    [UIView animateWithDuration:0.2 delay:0.0 options:UIViewAnimationOptionCurveEaseIn  animations:^{
        self.accountViewTopConstraint.constant = 140;
        [self layoutIfNeeded];
    } completion:nil];
    [UIView animateWithDuration:0.2 delay:0.05 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.passwordViewTopConstraint.constant = 250;
        [self layoutIfNeeded];
    } completion:nil];
    [UIView animateWithDuration:0.2 delay:0.1 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.backViewTopConstraint.constant = 360;
        [self layoutIfNeeded];
    } completion:completion];
}

- (void)animateAllViewSlideTogetherWithCompletion:(void (^)(BOOL finished))completion {
    [UIView animateWithDuration:0.2 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.passwordViewTopConstraint.constant = 250;
        [self layoutIfNeeded];
    } completion:nil];
    [UIView animateWithDuration:0.2 delay:0.1 options:UIViewAnimationOptionCurveEaseIn animations:^{
        self.accountViewTopConstraint.constant = 140;
        self.backViewTopConstraint.constant = 360;
        [self layoutIfNeeded];
    } completion:completion];
}

- (void)animateShowInputViewFromView:(UIView *)view completion:(void (^)(BOOL finished))completion {
    view.alpha = 1;
    self.inputView.alpha = 0;
    self.inputView.hidden = NO;
    [UIView animateWithDuration:0.2 animations:^{
        view.alpha = 0;
        self.inputView.alpha = 1;
    } completion:completion];
}

- (void)animateHideInputViewFromView:(UIView *)view completion:(void (^)(BOOL finished))completion {
    view.alpha = 0;
    self.inputView.alpha = 1;
    view.hidden = NO;
    [UIView animateWithDuration:0.1 animations:^{
        view.alpha = 1;
        self.inputView.alpha = 0;
    } completion:completion];
}

@end
