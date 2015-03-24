//
//  HighlightableTableCell.m
//  Easyell
//
//  Created by guoshencheng on 5/22/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//

#import "HighlightableTableCell.h"

@implementation HighlightableTableCell

#pragma mark - Public Method

- (void)configureHighlightMaskLayerWithFrame:(CGRect)frame {
  self.highlightMaskLayer = [CALayer layer];
  self.highlightMaskLayer.frame = frame;
  self.highlightMaskLayer.backgroundColor = [UIColor blackColor].CGColor;
  self.highlightMaskLayer.opacity = 0.3;
}

- (void)configureHighlightRoundMaskLayerWithFrame:(CGRect)frame cornerRadius:(CGFloat)cornerRadius {
  [self configureHighlightMaskLayerWithFrame:frame];
  self.highlightMaskLayer.cornerRadius = cornerRadius;
}

#pragma mark - overwrite UITableViewCell Methods

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {  
  if (highlighted) {
    [self.layer addSublayer:self.highlightMaskLayer];
  } else {
    [self.highlightMaskLayer removeFromSuperlayer];
  }
}

@end
