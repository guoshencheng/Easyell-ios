//
//  SignInAndUpViewController.m
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInAndUpViewController.h"
#import "SpringAnimationMaker.h"
#import "SignInAndUpViewController+configuration.h"
#import "SignInAndUpViewController+animation.h"
#import "SignInView+animation.h"

@implementation SignInAndUpViewController

#pragma mark - PublicMethod

+ (id)create {
    return [[SignInAndUpViewController alloc] initWithNibName:@"SignInAndUpViewController" bundle:nil];
}

#pragma mark - LiveCycle

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self animateAppearSignInAndUpView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addTapGesture];
    [self configureViews];
}


#pragma mark - Action

- (void)didClickSignInButton {
    [self animateHideSignInAndUpWithCompletion:^(BOOL finished) {
        self.signInView.hidden = YES;
        self.signUpView.hidden = YES;
        self.signInViewLeftConstraint.constant = -10;
        self.signUpViewLeftConstraint.constant = -10;
        [self.loginView animateToShow];
    }];
}

- (void)didClickSignUpButton {
    [self animateHideSignInAndUpWithCompletion:nil];
}


#pragma mark - PrivateMethod

- (void)addTapGesture {
    UITapGestureRecognizer *tapSignIn = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didClickSignInButton)];
    [self.signInView addGestureRecognizer:tapSignIn];
    UITapGestureRecognizer *tapSignUp = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didClickSignUpButton)];
    [self.signUpView addGestureRecognizer:tapSignUp];
}

@end
