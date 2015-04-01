//
//  TitleCell.m
//  Easyell
//
//  Created by guoshencheng on 4/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TitleCell.h"

@implementation TitleCell

- (void)awakeFromNib {
    
}

- (void)updateLabel:(NSString *)text {
    self.titleLabel.text = text;
}

- (CGFloat)getCellHeight {
    return self.frame.size.height;
}

@end
