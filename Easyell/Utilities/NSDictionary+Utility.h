//
//  NSDictionary+Utility.h
//  Vibin
//
//  Created by Sherlock on 2/28/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Utility)

// safe value accessor methods
- (NSNumber *)integerForKey:(NSString *)key;
- (NSNumber *)integerForKey:(NSString *)key defaultValue:(NSNumber *)defaultValue;
- (NSNumber *)doubleForKey:(NSString *)key;
- (NSString *)stringForKey:(NSString *)key;
- (NSDictionary *)dictionaryForKey:(NSString *)key;

@end
