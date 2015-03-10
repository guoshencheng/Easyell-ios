//
//  SignUpView.h
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "AutoLayoutView.h"

@protocol SignUpViewDelegate;
@interface SignUpView : AutoLayoutView
@property (weak, nonatomic) IBOutlet UILabel *accountLabel;
@property (weak, nonatomic) IBOutlet UIView *accountView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *accountLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *accountTopConstraint;
@property (weak, nonatomic) IBOutlet UILabel *usernameLabel;
@property (weak, nonatomic) IBOutlet UIView *usernameView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *usernameLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *usernameTopConstraint;
@property (weak, nonatomic) IBOutlet UILabel *passwordLabel;
@property (weak, nonatomic) IBOutlet UIView *passwordView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *passwordLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *passwordTopConstraint;
@property (weak, nonatomic) IBOutlet UIView *backView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *backViewLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *backViewTopConstraint;
@property (weak, nonatomic) IBOutlet UIView *inputView;
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;
@property (assign, nonatomic) NSInteger status;//-1-normal 0-account 1-username 2-password

@property (weak, nonatomic) id<SignUpViewDelegate>delegate;

@end
@protocol SignUpViewDelegate <NSObject>
@optional
- (void)SignUpViewDidBack;
@end