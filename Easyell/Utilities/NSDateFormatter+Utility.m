//
//  NSDateFormatter+Utility.m
//  Vibin
//
//  Created by Sherlock on 3/5/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "NSDateFormatter+Utility.h"
#import "NSDate+Utility.h"

#define TIMEINTERVAL_ONEHOUR 3600
#define TIMEINTERVAL_ONEMINUTE 60

@implementation NSDateFormatter (Utility)

+ (NSString *)versionStringFromDate:(NSDate *)date {
  static NSDateFormatter* dateFormat = nil;
  if (!dateFormat) {
    dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyyMMdd"];
  }
  return [dateFormat stringFromDate:date];
}

+ (NSString *)dayTimestampStringFromDate:(NSDate *)date {
  static NSDateFormatter* dateFormat = nil;
  if (!dateFormat) {
    dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"MMM dd, yyyy"];
  }
  return [dateFormat stringFromDate:date];
}

+ (NSString *)dayStringFromCurrentDate {
  static NSDateFormatter* dateFormat = nil;
  if (!dateFormat) {
    dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyyMMdd"];
  }
  return [dateFormat stringFromDate:[NSDate date]];
}

+ (NSString *)easyReadDateStringFromDateNumber:(NSNumber *)dateNumber andCurrentDateNumber:(NSNumber *)currentDateNumber{
  NSString *dateLableText = @"";
  double secondBetween = [currentDateNumber doubleValue] - [dateNumber doubleValue];
  if (TIMEINTERVAL_ONEMINUTE > secondBetween) {
    dateLableText = NSLocalizedString(@"date-label-justnow", nil);
  } else if (TIMEINTERVAL_ONEHOUR > secondBetween) {
    int minutes = secondBetween / TIMEINTERVAL_ONEMINUTE;
    if (minutes == 1) {
      dateLableText = [NSString stringWithFormat:@"%d %@", minutes, NSLocalizedString(@"date-label-min", nil)];
    } else {
      dateLableText = [NSString stringWithFormat:@"%d %@", minutes, NSLocalizedString(@"date-label-mins", nil)];
    }
  } else {
    int hours = secondBetween / TIMEINTERVAL_ONEHOUR;
    if (hours == 1) {
      dateLableText = [NSString stringWithFormat:@"%d %@", hours, NSLocalizedString(@"date-label-hour", nil)];
    } else {
      dateLableText = [NSString stringWithFormat:@"%d %@", hours, NSLocalizedString(@"date-label-hours", nil)];
    }
  }
  return dateLableText;
}

@end
