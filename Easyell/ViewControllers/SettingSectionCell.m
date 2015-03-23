//
//  SettingSectionCell.m
//  Easyell
//
//  Created by guoshencheng on 4/2/14.
//  Copyright (c) 2014 Easyell, Ltd. All rights reserved.
//

#import "SettingSectionCell.h"

@implementation SettingSectionCell

#pragma mark Public Methods

- (void)updateWithTitle:(NSString *)title {
  self.titleLabel.text = title;
}

@end
