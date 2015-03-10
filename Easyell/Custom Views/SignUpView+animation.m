//
//  SignUpView+animation.m
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignUpView+animation.h"
#import "SpringAnimationMaker.h"
#import "SignUpView+configuration.h"
#import "NSArray+Utilities.h"

@implementation SignUpView (animation)

- (void)animateBackFromInputWithView:(UIView *)view constraint:(NSLayoutConstraint *)constraint completion:(void (^)(BOOL finished))completion {
    [self animateHideInputViewFromView:view completion:^(BOOL finished) {
        [self animateSlideViewLeftFromInput:constraint completion:^(BOOL finished) {
            [self animateViews:@[self.backView, self.passwordView, self.usernameView, self.accountView] andConstraintArray:@[self.backViewTopConstraint, self.passwordTopConstraint, self.usernameTopConstraint, self.accountTopConstraint] toSlideBackWithCompletion:completion];
        }];
    }];
}

- (void)animateToInputFromAccountWithCompletion:(void (^)(BOOL finished))completion {
    [self animateViews:@[self.backView, self.passwordView, self.accountView, self.accountView] andConstraintArray:@[self.backViewTopConstraint, self.passwordTopConstraint, self.usernameTopConstraint, self.accountTopConstraint] hasSelectedView:YES toSlideDownWithCompletion:^(BOOL finished) {
        [self animateSlideViewRightToInput:self.accountLeftConstraint completion:^(BOOL finished) {
            [self animateShowInputViewFromView:self.accountView completion:completion];
        }];
    }];
}

- (void)animateToInputFromPasswordWithCompletion:(void (^)(BOOL finished))completion {
    [self animateViews:@[self.accountView, self.usernameView, self.passwordView] andConstraintArray:@[self.accountTopConstraint, self.usernameTopConstraint, self.passwordTopConstraint] hasSelectedView:YES toSlideUpWithCompletion:^(BOOL finished) {
        [self animateSlideViewRightToInput:self.passwordLeftConstraint completion:^(BOOL finished) {
            [self animateShowInputViewFromView:self.passwordView completion:completion];
        }];
        
    }];
    [self animateViews:@[self.backView] andConstraintArray:@[self.backViewTopConstraint] hasSelectedView:NO toSlideDownWithCompletion:nil];
}

- (void)animateToInputFromUsernameWithCompletion:(void (^)(BOOL finished))completion {
    [self animateViews:@[self.accountView] andConstraintArray:@[self.accountTopConstraint] hasSelectedView:NO toSlideUpWithCompletion:nil];
    [self animateViews:@[self.backView, self.passwordView, self.usernameView] andConstraintArray:@[self.backViewTopConstraint, self.passwordTopConstraint, self.usernameTopConstraint] hasSelectedView:YES toSlideDownWithCompletion:^(BOOL finished) {
        [self animateSlideViewRightToInput:self.usernameLeftConstraint completion:^(BOOL finished) {
            [self animateShowInputViewFromView:self.usernameView completion:completion];
        }];
    }];
}

- (void)animateToShow {
    self.hidden = NO;
    SpringAnimationFinisher *finish = [SpringAnimationFinisher finisherForViews:@[self.accountView, self.usernameView, self.passwordView, self.backView] offset:-10 block:^{
        self.accountLeftConstraint.constant = -10;
        self.usernameLeftConstraint.constant = -10;
        self.passwordLeftConstraint.constant = -10;
        self.backViewLeftConstraint.constant = -10;
        [self layoutIfNeeded];
        [SpringAnimationMaker removeAnimationFromViews:@[self.accountView, self.usernameView,self.passwordView, self.backView]];
    }];
    [SpringAnimationMaker steppedLeftSpringSlideOut:@[self.accountView, self.usernameView, self.passwordView, self.backView] xOffset:10 finishDelegate:finish];
}

- (void)animateToHideWithCompletion:(void (^)(BOOL finished))completion {
    [UIView animateWithDuration:0.2 animations:^{
        self.accountLeftConstraint.constant = -290;
        [self layoutIfNeeded];
    }];
    [UIView animateWithDuration:0.2 delay:0.05 options:UIViewAnimationOptionCurveLinear animations:^{
        self.usernameLeftConstraint.constant = -290;
        [self layoutIfNeeded];
    } completion:nil];
    [UIView animateWithDuration:0.2 delay:0.1 options:UIViewAnimationOptionCurveLinear animations:^{
        self.passwordLeftConstraint.constant = -290;
        [self layoutIfNeeded];
    } completion:nil];
    [UIView animateWithDuration:0.2 delay:0.15 options:UIViewAnimationOptionCurveLinear animations:^{
        self.backViewLeftConstraint.constant = -290;
        [self layoutIfNeeded];
    } completion:completion];
}

#pragma mark - PrivateMethod

- (void)animateViews:(NSArray *)views andConstraintArray:(NSArray *)constraints toSlideBackWithCompletion:(void (^)(BOOL finished))completion {
    NSMutableArray *arrayBottom = [[NSMutableArray alloc] init];
    NSMutableArray *arrayTop = [[NSMutableArray alloc] init];
    for (int i = 0; i < constraints.count; i ++) {
        NSLayoutConstraint *constraint = [constraints objectAtIndex:i];
        if (constraint.constant == self.frame.size.height) {
            [arrayBottom addObject:constraint];
        } else  {
            [arrayTop addObject:constraint];
        }
    }
    arrayBottom = [[NSMutableArray alloc] initWithArray:[arrayBottom reversedArray]];
    [self animateSlideViewsBackWithConstraintArray:arrayBottom completion:completion];
    [self animateSlideViewsBackWithConstraintArray:arrayTop completion:nil];
}

- (void)animateSlideViewsBackWithConstraintArray:(NSArray *)constraints completion:(void (^)(BOOL finished))completion {
    for(int i = 0; i < constraints.count; i ++) {
        [UIView animateWithDuration:0.2 delay:(i * (0.2 / constraints.count)) options:UIViewAnimationOptionCurveEaseOut  animations:^{
            NSLayoutConstraint *constraint = [constraints objectAtIndex:i];
            constraint.constant = [self getDefaultValueOfConstraint:constraint];
            [self layoutIfNeeded];
        } completion:(i == constraints.count -1 ? completion : nil)];
    }
}

- (void)animateViews:(NSArray *)views andConstraintArray:(NSArray *)constraints hasSelectedView:(BOOL)has toSlideUpWithCompletion:(void (^)(BOOL finished))completion{
    for (int i = 0; i < constraints.count; i ++) {
        [UIView animateWithDuration:0.2 delay: (i * (0.2 / constraints.count)) options:UIViewAnimationOptionCurveEaseIn animations:^{
            NSLayoutConstraint *constraint = [constraints objectAtIndex:i];
            if (has && (i == constraints.count -1)) {
                constraint.constant = self.inputView.frame.origin.y;
            } else {
                UIView *view = [views objectAtIndex:i];
                constraint.constant = -view.frame.size.height;
            }
            [self layoutIfNeeded];
        } completion:(i == constraints.count -1 ? completion : nil)];
    }
}

- (void)animateViews:(NSArray *)views andConstraintArray:(NSArray *)constraints hasSelectedView:(BOOL)has toSlideDownWithCompletion:(void (^)(BOOL finished))completion{
    for (int i = 0; i < constraints.count; i ++) {
        [UIView animateWithDuration:0.2 delay: (i * (0.2 / constraints.count)) options:UIViewAnimationOptionCurveEaseIn animations:^{
            NSLayoutConstraint *constraint = [constraints objectAtIndex:i];
            if (has && (i == constraints.count -1)) {
                constraint.constant = self.inputView.frame.origin.y;
            } else {
                constraint.constant = self.frame.size.height;
            }
            [self layoutIfNeeded];
        } completion:(i == constraints.count -1 ? completion : nil)];
    }
}

- (void)animateSlideViewRightToInput:(NSLayoutConstraint *)viewConstraint completion:(void (^)(BOOL finished))completion {
    [UIView animateWithDuration:0.3 animations:^{
        viewConstraint.constant = self.inputView.frame.origin.x;
        [self layoutIfNeeded];
    } completion:completion];
}

- (void)animateSlideViewLeftFromInput:(NSLayoutConstraint *)viewConstraint completion:(void (^)(BOOL finished))completion{
    [UIView animateWithDuration:0.3 animations:^{
        viewConstraint.constant = -10;
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
