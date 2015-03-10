//
//  SignInView.m
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInView.h"
#import "SignInView+configuration.h"
#import "SignInView+animation.h"

@implementation SignInView

+ (instancetype)create {
    return [[[NSBundle mainBundle] loadNibNamed:@"SignInView" owner:nil options:nil] lastObject];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self addTapGesture];
    self.inputView.hidden = YES;
}

#pragma mark - Action

- (IBAction)didClickLoginButton:(id)sender {
    
}


#pragma mark - PrivateMethod

- (void)addTapGesture {
    [self addGestureRecognizerToView:self.accountView target:self action:@selector(didTapAccountAction)];
    [self addGestureRecognizerToView:self.passwordView target:self action:@selector(didTapPasswordAction)];
    [self addGestureRecognizerToView:self.backView target:self action:@selector(didTapBackAction)];
    [self addGestureRecognizerToView:self target:self action:@selector(didTapBackgroundAction)];
}

- (void)didTapBackgroundAction {
    if (self.status != 0) {
        if (self.status == 1) {
            [self updateAccountLabelFromTextField];
            [self animateBackAccountWithCompletion:^(BOOL finished) {
                
            }];
        } else {
            [self updatePasswordLabelFromTextField];
            [self animateBackPasswordtWithCompletion:^(BOOL finished) {
                
            }];
        }
        self.status = 0;
    }
}

- (void)didTapAccountAction {
    self.status = 1;
    [self cleanTextFieldToAccount];
    [self animateToInputAccountWithCompletion:^(BOOL finished) {
        self.accountView.hidden = YES;
        [self.inputTextField becomeFirstResponder];
    }];
}

- (void)didTapPasswordAction {
    self.status = 2;
    [self cleanTextFieldToPassword];
    [self animateToInputPasswordWithCompletion:^(BOOL finished) {
        self.passwordView.hidden = YES;
        [self.inputTextField becomeFirstResponder];
    }];
}

- (void)didTapBackAction {
    [self animateToHideWithCompletion:^(BOOL finished) {
        if ([self.delegate respondsToSelector:@selector(SignInViewDidBack)]) {
            [self.delegate SignInViewDidBack];
        }
    }];
}

@end
