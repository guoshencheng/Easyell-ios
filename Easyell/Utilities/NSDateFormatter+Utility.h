//
//  NSDateFormatter+Utility.h
//  Vibin
//
//  Created by Sherlock on 3/5/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDateFormatter (Utility)

/**
 * Return the version style string of date, the format is "yyyyMMdd"
**/
+ (NSString *)versionStringFromDate:(NSDate *)date;

/**
 * Return the day style string of date for showing timestamp, the format is "MMM.dd yyyy"
**/
+ (NSString *)dayTimestampStringFromDate:(NSDate *)date;

/**
 * Return the day string of current date, the format is "yyyyMMdd"
**/
+ (NSString *)dayStringFromCurrentDate;

/**
 * Return 
 * - "just now" when short than 1 min
 * - "X min(s)" when short than 1 hour
 * - others: "X hour(s)
 **/
+ (NSString *)easyReadDateStringFromDateNumber:(NSNumber *)dateNumber andCurrentDateNumber:(NSNumber *)currentDateNumber;

@end
