//
//  SignInAndUpViewController.h
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SignInView.h"

@interface SignInAndUpViewController : UIViewController <UITextFieldDelegate, SignInViewDelegate>

@property (weak, nonatomic) IBOutlet UIView *TitleView;
@property (weak, nonatomic) IBOutlet UIImageView *titleImageView;
@property (weak, nonatomic) IBOutlet UIView *signInView;
@property (weak, nonatomic) IBOutlet UIView *signUpView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *signInViewLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *signUpViewLeftConstraint;

@property (strong, nonatomic) SignInView* loginView;

+ (id)create;
@end
