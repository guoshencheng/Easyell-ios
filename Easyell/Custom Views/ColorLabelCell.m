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
    self.maskView.hidden = YES;
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
}

- (void)updateWithColor:(UIColor *)color andSelected:(BOOL)selected {
    self.colorView.backgroundColor = color;
    [self updateCellStatusWithSelected:selected];
}

#pragma mark - PrivateMethod

- (void)updateCellStatusWithSelected:(BOOL)selected {
    self.maskView.hidden = !selected;
}

@end
