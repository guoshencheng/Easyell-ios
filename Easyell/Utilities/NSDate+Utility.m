//
//  NSDate+Utility.m
//  Vibin
//
//  Created by Sherlock on 2/28/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "NSDate+Utility.h"

@implementation NSDate (Utility)

+ (NSNumber *)timestamp {
  return [NSNumber numberWithInt:[[self date] timeIntervalSince1970]];
}

@end
