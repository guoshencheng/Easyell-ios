//
//  NSBundle+Utility.h
//  Vibin
//
//  Created by Sherlock on 3/6/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (Utility)

/**
 * Return the build value of the app, which set in info plist with key "bundle version"
**/
+ (NSString *)buildString;

/**
 * Return the version value of the app, which set in info plist with key "bundle version string, short"
**/
+ (NSString *)versionString;

@end
