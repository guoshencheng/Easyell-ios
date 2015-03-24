//
//  UserNameFormView+Configuration.m
//  Vibin
//
//  Created by jackjiang on 4/7/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "UserNameFormView+Configuration.h"

@implementation UserNameFormView (Configuration)

#pragma mark - Public Methods

- (void)initProperties {
    
}

- (void)configureView {
  [self configureText];
  [self configureTextField];
}

#pragma mark - Private Methods

- (void)configureText {
  self.titleLabel.text = NSLocalizedString(@"username-form-title", nil);
  [self.cancelButton setTitle:NSLocalizedString(@"username-form-button-cancel", nil) forState:UIControlStateNormal];
  [self.doneButton setTitle:NSLocalizedString(@"username-form-button-done", nil) forState:UIControlStateNormal];
}

- (void)configureTextField {
  self.displayNameTextField.delegate = self;
  self.displayNameTextField.enablesReturnKeyAutomatically = YES;
  [self.displayNameTextField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
  UIButton *clearButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 30, 80)];
  [clearButton setImage:[UIImage imageNamed:@"ico_setting_choice_clear"] forState:UIControlStateNormal];
  [clearButton setImageEdgeInsets:UIEdgeInsetsMake(20, -4, 20, 2)];
  [clearButton addTarget:self action:@selector(clearButtonClicked) forControlEvents:UIControlEventTouchUpInside];
  self.displayNameTextField.rightView = clearButton;
  self.displayNameTextField.rightView.hidden = YES;
  self.displayNameTextField.rightViewMode = UITextFieldViewModeAlways;
}


@end
