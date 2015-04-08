//
//  ItemOptionTitleCell.m
//  Easyell
//
//  Created by guoshencheng on 4/8/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemOptionTitleCell.h"

@implementation ItemOptionTitleCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)updateTitleLabel:(NSString *)text {
    self.titleCellTitleLabel.text = text;
    [self layoutIfNeeded];
    CGRect frame = self.frame;
    frame.size.height = [self caclulateHeight];
    self.frame = frame;
}

#pragma mark - PrivateMethod

- (CGFloat)caclulateHeight {
    return 10 + self.titleCellTitleLabel.frame.size.height + 10;
}

@end
