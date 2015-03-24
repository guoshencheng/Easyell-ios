//
//  SettingSectionView.m
//  Easyell
//
//  Created by apple on 14-7-2.
//  Copyright (c) 2015年 Easyell, Ltd. All rights reserved.
//

#import "SettingSectionView.h"

@implementation SettingSectionView

+ (id)create {
  SettingSectionView *view = [[[NSBundle mainBundle] loadNibNamed:@"SettingSectionView" owner:nil options:nil] lastObject];
  return view;
}

- (void)updateWithTitle:(NSString *)title {
  self.titleLabel.text = title;
}

@end
