//
//  SettingPageViewController+UserNameFormViewDelegate.m
//  Vibin
//
//  Created by jackjiang on 4/8/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "SettingPageViewController+UserNameFormViewDelegate.h"
#import "SettingPageViewController+Configuration.h"
#import "SettingPageViewController+Animation.h"

@implementation SettingPageViewController (UserNameFormViewDelegate)

#pragma mark - UserNameFormViewDelegate

- (void)usernameFormView:(UserNameFormView *)usernameFormView didFinishUpdateUsername:(NSString *)username success:(BOOL)success {
  if (success) {
    [usernameFormView updateOldName:username];
    [self updateBackButtonTitle];
    [self.settingsTableView reloadData];
    [self screenshotInfoCell];
    
    if ([self.delegate respondsToSelector:@selector(settingPageViewController:didUpdateDisplayName:)]) {
      [self.delegate settingPageViewController:self didUpdateDisplayName:username];
    }
  }
  [self animateHideUserNameFormView];
}

- (void)usernameFormViewDidClickCancel:(UserNameFormView *)usernameFormView {
  [self animateHideUserNameFormView];
}

@end
