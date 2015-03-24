//
//  NSBundle+Utility.m
//  Easyell
//
//  Created by guoshencheng on 3/6/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//

#import "NSBundle+Utility.h"

@implementation NSBundle (Utility)

+ (NSString *)buildString {
  static NSString* build = nil;
  if (nil == build) {
    build = [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleVersion"];
  }
  return build;
}

+ (NSString *)versionString {
  static NSString* version = nil;
  if (nil == version) {
    version = [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleShortVersionString"];
  }
  return version;
}

@end
