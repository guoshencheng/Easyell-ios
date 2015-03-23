//
//  SettingItemInfo.h
//  Easyell
//
//  Created by guoshencheng on 4/2/14.
//  Copyright (c) 2014 Easyell, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
  SettingItemAvatar = 0,
  SettingItemProfile = 1, //section
  SettingItemDisplayName = 2,
  SettingItemEmail = 3,
  SettingItemPassword = 4,
  SettingItemSetting = 5, //section
  SettingItemNotification = 6,
  SettingItemAbout = 7, //section
  SettingItemTerms = 8,
  SettingItemVersion = 9,
  SettingItemSignOut = 10,
} SettingItemEnum;

@interface SettingItemInfo : NSObject

+ (BOOL)isAvatarItem:(SettingItemEnum)item;
+ (BOOL)isSectionItem:(SettingItemEnum)item;
+ (BOOL)isInfoItem:(SettingItemEnum)item;
+ (BOOL)isOptionItem:(SettingItemEnum)item;
+ (BOOL)isButtonItem:(SettingItemEnum)item;

+ (NSString *)titleOfItem:(SettingItemEnum)item;

@end
