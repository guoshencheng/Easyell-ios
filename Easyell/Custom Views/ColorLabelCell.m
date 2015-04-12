//
//  ColorLabelCell.m
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ColorLabelCell.h"

@implementation ColorLabelCell

- (void)awakeFromNib {
    self.colorView.layer.cornerRadius = 5;
}

- (void)updateWithColor:(UIColor *)color {
    self.colorView.backgroundColor = color;
}

@end
