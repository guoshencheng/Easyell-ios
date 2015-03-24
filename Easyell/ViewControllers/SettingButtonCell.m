//
//  SettingButtonCell.m
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//

#import "SettingButtonCell.h"

@implementation SettingButtonCell

#pragma mark Public Methods

- (void)updateWithTitle:(NSString *)title {
  [self.button setTitle:title forState:UIControlStateNormal];
}

@end
