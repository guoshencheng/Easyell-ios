//
//  SettingOptionCell.m
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//

#import "SettingOptionCell.h"

@implementation SettingOptionCell

#pragma mark UIView Lifecycle

- (void)awakeFromNib {
  [super awakeFromNib];
  [self configureHighlightMaskLayerWithFrame:self.optionBackgroundView.frame];
}

#pragma mark Public Methods

- (void)updateWithTitle:(NSString *)title supTitle:(NSString *)supTitle {
  self.titleLabel.text = title;
  self.supTitleLabel.text = supTitle;
}

@end
