//
//  NSDictionary+Utility.m
//  Vibin
//
//  Created by Sherlock on 2/28/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "NSDictionary+Utility.h"

@implementation NSDictionary (Utility)

- (NSNumber *)integerForKey:(NSString *)key {
  return [self integerForKey:key defaultValue:nil];
}

- (NSNumber *)integerForKey:(NSString *)key defaultValue:(NSNumber *)defaultValue {
  id value = [self valueForKey:key];
  if ([NSNull null] == value) {
    return defaultValue;
  }
  return [NSNumber numberWithInt:[value intValue]];
}

- (NSNumber *)doubleForKey:(NSString *)key {
  id value = [self valueForKey:key];
  if ([NSNull null] == value) {
    return nil;
  }
  return [NSNumber numberWithDouble:[value doubleValue]];
}

- (NSString *)stringForKey:(NSString *)key {
  id value = [self valueForKey:key];
  if (!value || [NSNull null] == value) {
    return @"";
  }
  if ([value isKindOfClass:[NSNumber class]]) {
    return [value stringValue];
  }
  if (![value isKindOfClass:[NSString class]]) {
    return @"";
  }
  if ([@"null" isEqualToString:value]) {
    return @"";
  }
  return value;
}

- (NSDictionary *)dictionaryForKey:(NSString *)key {
  id value = [self valueForKey:key];
  if (!value || [NSNull null] == value) {
    return [NSDictionary dictionary];
  }
  if (![value isKindOfClass:[NSDictionary class]]) {
    return [NSDictionary dictionary];
  }
  return value;
}

@end
