//
//  DetailCell.m
//  Easyell
//
//  Created by guoshencheng on 4/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "DetailCell.h"

@implementation DetailCell

- (void)awakeFromNib {
    
}

- (void)updateTitleLabel:(NSString *)text {
    self.titleLabel.text = text;
}

- (CGFloat)getCellHeight {
    return self.frame.size.height;
}

- (void)updateValueLabel:(NSString *)text {
    self.valueLabel.text = text;
}

@end
