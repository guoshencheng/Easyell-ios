//
//  NSURL+Utility.m
//  Vibin
//
//  Created by Sherlock on 6/23/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "NSURL+Utility.h"

@implementation NSURL (Utility)

- (NSString *)rootUrl {
  return [NSString stringWithFormat:@"%@://%@", [self scheme], [self host]];
}

@end
