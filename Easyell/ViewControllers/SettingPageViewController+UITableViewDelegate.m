//
//  SettingPageViewController+UITableViewDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//
#import "SettingPageViewController+UITableViewDelegate.h"
#import "SettingPageViewController+Configuration.h"
#import "SettingPageViewController+Animation.h"
#import "SettingSectionView.h"

#define SCREAMWIDTH 320
#define ORIGINHIGHT 264
#define HEADBAR_HEIGHT 47
#define TABLEVIEW_INSERT 60
#define TABLEVIEWOFFSET_AVATARVIEW_BE_TOP 144

@implementation SettingPageViewController (UITableViewDelegate)

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  return [self heightOfItem:[self.settingsDataSource itemOfIndexPath:indexPath]];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  SettingItemEnum settingItemEnum = [self.settingsDataSource itemOfIndexPath:indexPath];
  switch (settingItemEnum) {
    case SettingItemAvatar: {
//      PicturePickerViewController *picturePickerViewController = [PicturePickerViewController create];
//      picturePickerViewController.mode = PicturePickerModeCropper;
//      picturePickerViewController.delegate = self;
//      [self.navigationController pushViewController:picturePickerViewController animated:YES];
//      break;
    }
      
    case SettingItemDisplayName: {
      [self animateShowUserNameFormView];
      break;
    }
      
    case SettingItemPassword: {
//      [FlurryHelper logEvent:EVENT_NAME_SETTINGS_PASSWORD_RESET objectId:nil];
//      [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[ApiRequest urlForResetPasswordWithEmail:[[Profile current] tokenOfType:TokenTypeEasyell].email]]];
      break;
    }
    default:
      break;
  }
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
  CGFloat contentOffsetHeight = self.settingsTableView.contentOffset.y;
  if (contentOffsetHeight < -TABLEVIEW_INSERT) {
    CGFloat avatarViewHeight = self.avatarView.frame.size.height;
    CGFloat avatarViewWidth = self.avatarView.frame.size.width;
    CGFloat addAvatarViewWidth = (- contentOffsetHeight - TABLEVIEW_INSERT) * avatarViewWidth / avatarViewHeight;
    self.avatarViewHeighConstrain.constant = ORIGINHIGHT - TABLEVIEW_INSERT - contentOffsetHeight;
    self.avatarViewWidthConstrain.constant = SCREAMWIDTH + addAvatarViewWidth;
    self.avatarViewTopConstrain.constant = 0;
  } else {
    if (contentOffsetHeight >= TABLEVIEWOFFSET_AVATARVIEW_BE_TOP) {
      self.avatarViewTopConstrain.constant = - TABLEVIEWOFFSET_AVATARVIEW_BE_TOP - TABLEVIEW_INSERT;
    } else {
      self.avatarViewTopConstrain.constant = -contentOffsetHeight - TABLEVIEW_INSERT;
    }
    self.avatarViewHeighConstrain.constant = ORIGINHIGHT;
    self.avatarViewWidthConstrain.constant = SCREAMWIDTH;
    if (self.settingsTableView.contentSize.height - self.settingsTableView.frame.size.height - contentOffsetHeight >= 0) {
      self.signOutButtonViewBottomConstrain.constant =  -(self.settingsTableView.contentSize.height - self.settingsTableView.frame.size.height - contentOffsetHeight);
    } else {
      self.signOutButtonViewBottomConstrain.constant = 0;
    }
  }
  
}

@end
