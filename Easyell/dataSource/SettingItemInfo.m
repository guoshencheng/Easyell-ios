//
//  SettingItemInfo.m
//  Easyell
//
//  Created by guoshencheng on 4/2/14.
//  Copyright (c) 2014 Easyell, Ltd. All rights reserved.
//

#import "SettingItemInfo.h"
#import "NSBundle+Utility.h"

@implementation SettingItemInfo

+ (BOOL)isAvatarItem:(SettingItemEnum)item {
  return SettingItemAvatar == item;
}

+ (BOOL)isSectionItem:(SettingItemEnum)item {
  return SettingItemProfile == item || SettingItemSetting == item || SettingItemAbout == item;
}

+ (BOOL)isInfoItem:(SettingItemEnum)item {
  return SettingItemDisplayName == item || SettingItemEmail == item;
}

+ (BOOL)isOptionItem:(SettingItemEnum)item {
  return SettingItemNotification == item || SettingItemTerms == item || SettingItemVersion == item || SettingItemPassword == item;
}

+ (BOOL)isButtonItem:(SettingItemEnum)item {
  return SettingItemSignOut == item;
}

+ (NSString *)titleOfItem:(SettingItemEnum)item {
  NSString *title = @"";
  switch (item) {
    case SettingItemProfile:
      title = NSLocalizedString(@"setting-item-title-profile", nil);
      break;
      
    case SettingItemSetting:
      title = NSLocalizedString(@"setting-item-title-setting", nil);
      break;
      
    case SettingItemAbout:
      title = NSLocalizedString(@"setting-item-title-about", nil);
      break;
      
    case SettingItemDisplayName:
      title = NSLocalizedString(@"setting-item-title-username", nil);
      break;
      
    case SettingItemEmail:
      title = NSLocalizedString(@"setting-item-title-email", nil);
      break;
      
    case SettingItemPassword:
      title = NSLocalizedString(@"setting-item-title-password", nil);
      break;
    
    case SettingItemNotification:
      title = NSLocalizedString(@"setting-item-title-notifications", nil);
      break;
      
    case SettingItemTerms:
      title = NSLocalizedString(@"setting-item-title-terms", nil);
      break;
      
    case SettingItemVersion:
      title = [NSString stringWithFormat:@"%@ (Beta)", [NSBundle versionString]];;
      break;
      
    case SettingItemSignOut:
      title = NSLocalizedString(@"setting-item-title-signout", nil);
      break;
      
    default:
      break;
  }
  
  return title;
}

@end
