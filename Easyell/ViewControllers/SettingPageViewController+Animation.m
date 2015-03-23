//
//  SettingPageViewController+Animation.m
//  Easyell
//
//  Created by jackjiang on 4/8/14.
//  Copyright (c) 2014 Easyell, Ltd. All rights reserved.
//

#import "SettingPageViewController+Animation.h"
#import "UIImage+Utility.h"
#import "UIScreen+Utilities.h"

#define DEFAULT_INPUT_VIEW_TOP 147
#define TOP_VIEW_HEIGHT_FOR_INFO_CELL 107
#define TABLEVIEWOFFSET_AVATARVIEW_BE_TOP 144

@implementation SettingPageViewController (Animation)

- (void)animateShowUserNameFormView {
  NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:1];
  [self initialLayoutForShowUserNameFormViewWithIndexPath:indexPath];
  [self beforeShowUserNameFormViewForIndexPath:indexPath];
  
  [UIView animateWithDuration:0.25 animations:^{
    self.maskView.alpha = 1.f;
    self.maskImageView.alpha = 0.f;
    self.coverImageMaskView.alpha = 1.f;
    [self.view layoutIfNeeded];
  } completion:^(BOOL finished) {
    [self afterShowUserNameFormViewForIndexPath:indexPath];
  }];
}

- (void)animateHideUserNameFormView {
  NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:1];
  [self beforeHideUserNameFormViewForIndexPath:indexPath];
  
  [UIView animateWithDuration:0.25 animations:^{
    self.maskView.alpha = 0.f;
    self.maskImageView.alpha = 1.f;
    self.coverImageMaskView.alpha = 0.f;
    [self.view layoutIfNeeded];
  } completion:^(BOOL finished) {
    [self afterHideUserNameFormViewForIndexPath:indexPath];
  }];
}

#pragma mark Private Methods

- (void)initialLayoutForShowUserNameFormViewWithIndexPath:(NSIndexPath *)indexPath {
  [self screenshotForCoverImageViewIfNeeds];
  
  CGRect frame = [self.settingsTableView rectForRowAtIndexPath:indexPath];
  CGRect rectOfCellInSuperview = [self.settingsTableView convertRect:frame toView:[self.settingsTableView superview]];
  self.maskImageViewTopConstraint.constant = rectOfCellInSuperview.origin.y;
  
  [self.view layoutIfNeeded];
}

- (void)beforeShowUserNameFormViewForIndexPath:(NSIndexPath *)indexPath {
  [self.settingsTableView cellForRowAtIndexPath:indexPath].hidden = YES;
  self.maskImageViewTopConstraint.constant = DEFAULT_INPUT_VIEW_TOP;
  
  self.maskView.hidden = NO;
  self.maskImageViewBackgroundView.hidden = NO;
  self.maskImageView.hidden = NO;
  self.coverImageView.hidden = NO;
  self.coverImageMaskView.hidden = (self.settingsTableView.contentOffset.y <= TABLEVIEWOFFSET_AVATARVIEW_BE_TOP);
  
  self.maskView.alpha = 0.f;
  self.maskImageView.alpha = 1.f;
  self.coverImageMaskView.alpha = 0.f;
}

- (void)afterShowUserNameFormViewForIndexPath:(NSIndexPath *)indexPath {
  [self.settingsTableView cellForRowAtIndexPath:indexPath].hidden = NO;
  //self.userNameFormView.hidden = NO;
  self.maskView.hidden = YES;
  self.maskImageViewBackgroundView.hidden = YES;
  self.maskImageView.hidden = YES;
  //[self.userNameFormView beginEdit];
}

- (void)beforeHideUserNameFormViewForIndexPath:(NSIndexPath *)indexPath {
  self.maskView.alpha = 1.f;
  self.maskImageView.alpha = 0.f;
  
  self.maskView.hidden = NO;
  self.maskImageViewBackgroundView.hidden = NO;
  self.maskImageView.hidden = NO;
  //self.userNameFormView.hidden = YES;
  [self.settingsTableView cellForRowAtIndexPath:indexPath].hidden = YES;
  
  CGRect frame = [self.settingsTableView rectForRowAtIndexPath:indexPath];
  CGRect rectOfCellInSuperview = [self.settingsTableView convertRect:frame toView:[self.settingsTableView superview]];
  self.maskImageViewTopConstraint.constant = rectOfCellInSuperview.origin.y;
}

- (void)afterHideUserNameFormViewForIndexPath:(NSIndexPath *)indexPath {
  [self.settingsTableView cellForRowAtIndexPath:indexPath].hidden = NO;
  self.maskView.hidden = YES;
  self.maskImageViewBackgroundView.hidden = YES;
  self.maskImageView.hidden = YES;
  self.coverImageView.hidden = YES;
  self.coverImageMaskView.hidden = YES;
}

- (void)screenshotForCoverImageViewIfNeeds {
  if (self.settingsTableView.contentOffset.y > TABLEVIEWOFFSET_AVATARVIEW_BE_TOP) {
    self.coverImageView.image = [UIImage imageWithView:self.view size:CGSizeMake([UIScreen width], TOP_VIEW_HEIGHT_FOR_INFO_CELL)];
  } else {
    self.coverImageView.image = nil;
  }
}

@end
