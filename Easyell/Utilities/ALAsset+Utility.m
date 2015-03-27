//
//  ALAsset+Utility.m
//  Vibin
//
//  Created by jackjiang on 9/15/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "ALAsset+Utility.h"

@implementation ALAsset (Utility)

- (BOOL)isEqual:(id)object {
  if (self == object) {
    return YES;
  }
  if ([object isKindOfClass:[ALAsset class]]) {
    ALAsset *asset = (ALAsset *)object;
    return (![self valueForProperty:ALAssetPropertyAssetURL] && ![asset valueForProperty:ALAssetPropertyAssetURL]) || [[self valueForProperty:ALAssetPropertyAssetURL] isEqual:[asset valueForProperty:ALAssetPropertyAssetURL]];
  }
  return NO;
}

- (NSUInteger)hash {
  return [[self valueForProperty:ALAssetPropertyAssetURL] hash];
}

@end
