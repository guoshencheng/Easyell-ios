//
//  HighlightBackgroundButton.m
//  Vibin
//
//  Created by Sherlock on 7/24/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "HighlightBackgroundButton.h"

@implementation HighlightBackgroundButton

- (void)setHighlighted:(BOOL)highlighted {
  [super setHighlighted:highlighted];
  if (highlighted) {
    self.backgroundColor = self.highlightBackgroundColor;
  } else {
    self.backgroundColor = self.normalBackgroundColor;
  }
}

@end
