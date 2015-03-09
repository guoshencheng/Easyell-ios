//
//  SignInAndUpViewController.m
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInAndUpViewController.h"
#import "SignInAndUpViewController+configuration.h"
#import "SignInAndUpViewController+animation.h"

@implementation SignInAndUpViewController

+ (id)create {
    return [[SignInAndUpViewController alloc] initWithNibName:@"SignInAndUpViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureViews];
    [self addTapGesture];
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    [self animateToMoveContainerViewFromTop:40];
}

#pragma mark - PrivateMethod

- (void)addTapGesture {
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(shouleExitEditing)];
    [self.mainContainerView addGestureRecognizer:tap];
    [self.view addGestureRecognizer:tap];
}

- (void)shouleExitEditing {
    [self.accountTextField resignFirstResponder];
    [self.passwordTextField resignFirstResponder];
    [self animateToMoveContainerViewFromTop:80];

}

@end
