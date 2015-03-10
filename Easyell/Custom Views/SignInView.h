//
//  SignInView.h
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AutoLayoutView.h"

@protocol SignInViewDelegate;

@interface SignInView : AutoLayoutView

@property (weak, nonatomic) IBOutlet UIView *accountView;
@property (weak, nonatomic) IBOutlet UILabel *accountLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *accountViewConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *accountViewTopConstraint;
@property (weak, nonatomic) IBOutlet UIView *passwordView;
@property (weak, nonatomic) IBOutlet UILabel *passwordLabel;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *passwordViewConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *passwordViewTopConstraint;
@property (weak, nonatomic) IBOutlet UIView *backView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *backViewConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *backViewTopConstraint;
@property (weak, nonatomic) IBOutlet UIView *inputView;
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;


@property (assign, nonatomic) NSInteger status;//0-normal 1-account 2-password

@property (weak, nonatomic) id<SignInViewDelegate> delegate;

@end

@protocol SignInViewDelegate <NSObject>

@optional
- (void)SignInViewDidBack;

@end