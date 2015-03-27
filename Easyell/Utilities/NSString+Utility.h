//
//  NSString+Utility.h
//  Vibin
//
//  Created by Sherlock on 2/25/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDateFormatter+Utility.h"

@interface NSString (Utility)

/**
 * return url string of include timestamp
 **/
- (NSString *)timestampUrl;

/**
 * Remove all non-alphanumeric characters in string and covert all to lowercase
**/
- (NSString *)toTagCompliantString;

/**
 * Encodes all non-URL characters
**/
- (NSString *)toUrlEncodedString;

/**
 * Call this method when the current string is a json string and want to covert to a NSDictionary
**/
- (NSDictionary *)toDictionaryAsJSON;

/**
 * Replace "/s130x130/.." and "_s.jpg" parts to "/n130x130/.." and "_n.jpg" as the original url of Facebook image
 **/
- (NSString *)toFacebookOriginImageUrl;

/**
 * The string convert to HTML Format
 **/
- (NSString *)convertToHTML;

/**
 * Replace "\n" to " "(space)
 **/
- (NSString *)removeNewLines;

/**
 * Check whether the string is a valid email format string
**/
- (BOOL)isValidEmail;

/**
 * Check whether the string is (or not) blank
**/
- (BOOL)isBlank;
- (BOOL)isNotBlank;

- (BOOL)contains:(NSString *)str;
- (BOOL)isUUID;

@end
