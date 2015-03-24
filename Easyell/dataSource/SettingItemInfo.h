//
//  SettingItemInfo.h
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
  SettingItemAvatar = 0,
  SettingItemProfile = 1, //section
  SettingItemDisplayName = 2,
  SettingItemEmail = 3,
  SettingItemPassword = 4,
  SettingItemSignOut = 5,
} SettingItemEnum;

@interface SettingItemInfo : NSObject

+ (BOOL)isAvatarItem:(SettingItemEnum)item;
+ (BOOL)isSectionItem:(SettingItemEnum)item;
+ (BOOL)isInfoItem:(SettingItemEnum)item;
+ (BOOL)isOptionItem:(SettingItemEnum)item;
+ (BOOL)isButtonItem:(SettingItemEnum)item;

+ (NSString *)titleOfItem:(SettingItemEnum)item;

@end
