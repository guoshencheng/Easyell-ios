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
    [self addTapGesture];
    self.inputView.hidden = YES;
}

#pragma mark - Action

- (IBAction)didClickLoginButton:(id)sender {
    
}


#pragma mark - PrivateMethod

- (void)addTapGesture {
    UITapGestureRecognizer *accountTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAccount)];
    [self.accountView addGestureRecognizer:accountTap];
    UITapGestureRecognizer *passwordTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapPassword)];
    [self.passwordView addGestureRecognizer:passwordTap];
    UITapGestureRecognizer *backTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapBack)];
    [self.backView addGestureRecognizer:backTap];
    UITapGestureRecognizer *backgroundTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapBackground)];
    [self addGestureRecognizer:backgroundTap];
}

- (void)tapBackground {
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

- (void)tapAccount {
    self.status = 1;
    [self cleanTextFieldToAccount];
    [self animateToInputAccountWithCompletion:^(BOOL finished) {
        self.accountView.hidden = YES;
        [self.inputTextField becomeFirstResponder];
    }];
}

- (void)tapPassword {
    self.status = 2;
    [self cleanTextFieldToPassword];
    [self animateToInputPasswordWithCompletion:^(BOOL finished) {
        self.passwordView.hidden = YES;
        [self.inputTextField becomeFirstResponder];
    }];
}

- (void)tapBack {
    [self animateToHideWithCompletion:^(BOOL finished) {
        if ([self.delegate respondsToSelector:@selector(SignInViewDidBack)]) {
            [self.delegate SignInViewDidBack];
        }
    }];
}

@end
