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
    [self updateAccountLabelFromTextField];
    [self animteBackAccountWithCompletion:^(BOOL finished) {
        
    }];
}

- (void)tapAccount {
    [self cleanTextFieldToAccount];
    [self animateToInputAccountWithCompletion:^(BOOL finished) {
        self.accountView.hidden = YES;
        [self.inputTextField becomeFirstResponder];
    }];
}

- (void)tapPassword {
    
}

- (void)tapBack {
    [self animteToHideWithCompletion:^(BOOL finished) {
        if ([self.delegate respondsToSelector:@selector(SignInViewDidBack)]) {
            [self.delegate SignInViewDidBack];
        }
    }];
}

@end
