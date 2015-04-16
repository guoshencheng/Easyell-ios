//
//  ColorLabelCollectViewCell.m
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ColorLabelCollectViewCell.h"

@implementation ColorLabelCollectViewCell

- (void)awakeFromNib {
    self.layer.cornerRadius = 5;
}

#pragma mark - PublicMethod

- (void)updateWithColor:(UIColor *)color {
    self.backgroundColor = color;
}

@end
