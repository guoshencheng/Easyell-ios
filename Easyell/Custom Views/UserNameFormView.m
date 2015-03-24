//
//  UserNameFormView.m
//  Vibin
//
//  Created by jackjiang on 4/7/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "UserNameFormView.h"
#import "UserNameFormView+Configuration.h"
#import "UserNameFormView+Animation.h"

@implementation UserNameFormView

+ (id)create {
  UserNameFormView *view = [[[NSBundle mainBundle] loadNibNamed:@"UserNameFormView" owner:nil options:nil] lastObject];
  view.translatesAutoresizingMaskIntoConstraints = NO;
  return view;
}

#pragma mark UIView Lifecycle

- (void)awakeFromNib {
  [self initProperties];
  [self configureView];
}

#pragma mark Public Methods

- (void)updateOldName:(NSString *)oldName {
  self.oldUsername = oldName;
}

- (void)beginEdit {
  [self animateShowInputView];
}

- (void)clearButtonClicked {
  self.displayNameTextField.text = @"";
  self.displayNameTextField.rightView.hidden = YES;
  self.displayNameTextField.hidden = NO;
}

#pragma mark - IBAction Methods

- (IBAction)cancelButtonClicked:(id)sender {
  [self animateHideInputViewForCancel];
}

- (IBAction)doneButtonClicked:(id)sender {
  [self.displayNameTextField resignFirstResponder];
}

#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
  [textField resignFirstResponder];
  return NO;
}

- (void)textFieldDidChange:(id)sender {
  self.displayNameTextField.rightView.hidden = [self.displayNameTextField.text length] <= 0;
}

@end
