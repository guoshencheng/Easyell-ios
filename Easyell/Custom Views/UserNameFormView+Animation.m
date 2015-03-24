//
//  UserNameFormView+Animation.m
//  Vibin
//
//  Created by jackjiang on 8/21/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "UserNameFormView+Animation.h"
#import "UIScreen+Utilities.h"

#define DEFAULT_INPUT_VIEW_WIDTH 267

@implementation UserNameFormView (Animation)

- (void)animateShowInputView {
  self.inputViewWidthConstrain.constant = [UIScreen width];
  [self updateViewsAlpha:0.f];
  
  [UIView animateWithDuration:0.1 animations:^{
    [self updateViewsAlpha:1.f];
    [self layoutIfNeeded];
  } completion:^(BOOL finished) {
    [self.displayNameTextField becomeFirstResponder];
  }];
}

- (void)animateHideInputViewWithCompletion:(void (^)(void))completion {
  [self.displayNameTextField resignFirstResponder];
  self.inputViewWidthConstrain.constant = DEFAULT_INPUT_VIEW_WIDTH;
  [self updateViewsAlpha:1.f];
  
  [UIView animateWithDuration:0.1 animations:^{
    [self updateViewsAlpha:0.f];
    [self layoutIfNeeded];
  } completion:^(BOOL finished) {
    self.displayNameTextField.text = @"";
    self.displayNameTextField.rightView.hidden = YES;
    if (completion) {
      completion();
    }
  }];
}

- (void)animateHideInputViewForCancel {
  [self.displayNameTextField resignFirstResponder];
  self.inputViewWidthConstrain.constant = DEFAULT_INPUT_VIEW_WIDTH;
  [self updateViewsAlpha:1.f];
  
  [UIView animateWithDuration:0.1 animations:^{
    [self updateViewsAlpha:0.f];
    [self layoutIfNeeded];
  } completion:^(BOOL finished) {
    self.displayNameTextField.text = @"";
    self.displayNameTextField.rightView.hidden = YES;
    if ([self.delegate respondsToSelector:@selector(usernameFormViewDidClickCancel:)]) {
      [self.delegate usernameFormViewDidClickCancel:self];
    }
  }];
}

#pragma mark - Private Methods

- (void)updateViewsAlpha:(CGFloat)alpha {
  self.titleLabel.alpha = alpha;
  self.cancelButton.alpha = alpha;
  self.doneButton.alpha = alpha;
}

@end
