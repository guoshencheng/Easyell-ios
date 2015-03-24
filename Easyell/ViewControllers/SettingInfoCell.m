//
//  SettingInfoCell.m
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//

#import "SettingInfoCell.h"

@implementation SettingInfoCell

#pragma mark UIView Lifecycle

- (void)awakeFromNib {
  [super awakeFromNib];
  [self configureHighlightMaskLayerWithFrame:self.contentAreaView.frame];
}

#pragma mark Public Methods

- (void)updateWithTitle:(NSString *)title info:(NSString *)info {
  self.titleLabel.text = title;
  self.infoLabel.text = info;
}

@end
