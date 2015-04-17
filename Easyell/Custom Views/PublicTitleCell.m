//
//  PublicTitleCell.m
//  Easyell
//
//  Created by guoshencheng on 4/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "PublicTitleCell.h"

@implementation PublicTitleCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)updateTitleLabel:(NSString *)text {
    if (![text isEqual:@""]) {
        self.titleCellTitleLabel.text = text;
    } else {
        self.titleCellTitleLabel.text = @"tap this cell to enter a Title";
    }
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
