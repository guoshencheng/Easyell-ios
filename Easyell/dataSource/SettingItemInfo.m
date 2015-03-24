//
//  SettingItemInfo.m
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//

#import "SettingItemInfo.h"
#import "NSBundle+Utility.h"

@implementation SettingItemInfo

+ (BOOL)isAvatarItem:(SettingItemEnum)item {
  return SettingItemAvatar == item;
}

+ (BOOL)isSectionItem:(SettingItemEnum)item {
  return SettingItemProfile == item;
}

+ (BOOL)isInfoItem:(SettingItemEnum)item {
  return SettingItemDisplayName == item || SettingItemEmail == item;
}

+ (BOOL)isOptionItem:(SettingItemEnum)item {
  return SettingItemPassword == item;
}

+ (BOOL)isButtonItem:(SettingItemEnum)item {
  return SettingItemSignOut == item;
}

+ (NSString *)titleOfItem:(SettingItemEnum)item {
  NSString *title = @"";
  switch (item) {
    case SettingItemProfile:
      title = NSLocalizedString(@"Profile", nil);
      break;
      
    case SettingItemDisplayName:
      title = NSLocalizedString(@"Username", nil);
      break;
      
    case SettingItemEmail:
      title = NSLocalizedString(@"Email", nil);
      break;
      
    case SettingItemPassword:
      title = NSLocalizedString(@"Change Your Password", nil);
      break;
      
    case SettingItemSignOut:
      title = NSLocalizedString(@"signout", nil);
      break;
      
    default:
      break;
  }
  
  return title;
}

@end
