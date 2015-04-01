//
//  ButtonCell.m
//  Easyell
//
//  Created by guoshencheng on 4/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ButtonCell.h"

@implementation ButtonCell

- (void)awakeFromNib {
   
}

- (void)updateLabel:(NSString *)text {
    self.label.text = text;
}

- (CGFloat)getCellHeight {
    return self.frame.size.height;
}

@end
