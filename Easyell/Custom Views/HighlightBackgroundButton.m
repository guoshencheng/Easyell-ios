//
//  HighlightBackgroundButton.m
//  Easyell
//
//  Created by guoshencheng on 7/24/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
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
