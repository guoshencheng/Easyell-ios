//
//  ItemOptionDescriptionCell.m
//  Easyell
//
//  Created by guoshencheng on 4/8/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemOptionDescriptionCell.h"

@implementation ItemOptionDescriptionCell

- (void)awakeFromNib {
    
}

- (void)updateDescriptionLabel:(NSString *)text {
    self.descriptionLabel.text = text;
    [self layoutIfNeeded];
    CGRect frame = self.frame;
    frame.size.height = [self caclulateHeight];
    self.frame = frame;
}

#pragma mark - PrivateMethod

- (CGFloat)caclulateHeight {
    return self.descriptionLabel.frame.size.height;
}

@end
