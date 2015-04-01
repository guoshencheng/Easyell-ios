//
//  SignUpView.m
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignUpView.h"
#import "SignUpView+animation.h"
#import "SignUpView+configuration.h"

@implementation SignUpView

+ (instancetype)create {
    SignUpView *view = [[[NSBundle mainBundle] loadNibNamed:@"SignUpView" owner:nil options:nil] lastObject];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    return view;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    self.status = -1;
    [self configureViews];
    [self configureTapGesture];
}

- (void)configureTapGesture {
    [self addGestureRecognizerToView:self target:self action:@selector(tapBackgroundAction)];
    [self addGestureRecognizerToView:self.accountView target:self action:@selector(tapAccountAction)];
    [self addGestureRecognizerToView:self.usernameView target:self action:@selector(tapUsernameAction)];
    [self addGestureRecognizerToView:self.passwordView target:self action:@selector(tapPasswordAction)];
    [self addGestureRecognizerToView:self.backView target:self action:@selector(tapBackButtonAction)];
}

#pragma mark - Action

- (IBAction)didClickRegistButton:(id)sender {
    
}

- (void)tapBackgroundAction {
    if (self.status != -1) {
        if (self.status == 0) {
            [self updateAccountLabelFromTextField];
            [self animateBackFromInputWithView:self.accountView constraint:self.accountLeftConstraint completion:^(BOOL finished) {
                
            }];
        } else if(self.status == 1) {
            [self updateUsernameLabelFromTextField];
            [self animateBackFromInputWithView:self.usernameView constraint:self.usernameLeftConstraint completion:^(BOOL finished) {
                
            }];
        } else if (self.status == 2) {
            [self updatePasswordLabelFromTextField];
            [self animateBackFromInputWithView:self.passwordView constraint:self.passwordLeftConstraint completion:^(BOOL finished) {
                
            }];
        }
        self.status = -1;
    }
}

- (void)tapAccountAction {
    self.status = 0;
    [self cleanTextFieldToAccount];
    [self animateToInputFromAccountWithCompletion:^(BOOL finished) {
        self.accountView.hidden = YES;
        [self.inputTextField becomeFirstResponder];
    }];
}

- (void)tapPasswordAction {
    self.status = 2;
    [self cleanTextFieldToPassword];
    [self animateToInputFromPasswordWithCompletion:^(BOOL finished) {
        self.passwordView.hidden = YES;
        [self.inputTextField becomeFirstResponder];
    }];
}

- (void)tapUsernameAction {
    self.status = 1;
    [self cleanTextFieldToUserName];
    [self animateToInputFromUsernameWithCompletion:^(BOOL finished) {
        self.usernameView.hidden = YES;
        [self.inputTextField becomeFirstResponder];
    }];
}

- (void)tapBackButtonAction {
    [self animateToHideWithCompletion:^(BOOL finished) {
        if ([self.delegate respondsToSelector:@selector(SignUpViewDidBack)]) {
            [self.delegate SignUpViewDidBack];
        }
    }];
}

@end
