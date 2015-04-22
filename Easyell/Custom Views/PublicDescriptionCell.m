//
//  PublicDescriptionCell.m
//  Easyell
//
//  Created by guoshencheng on 4/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "PublicDescriptionCell.h"

@implementation PublicDescriptionCell

- (void)awakeFromNib {
    
}

- (void)updateDescriptionLabel:(NSString *)text {
    if (![text isEqual:@""]) {
        self.descriptionLabel.text = text;
    } else {
        self.descriptionLabel.text = @"tap this cell to enter decription";
    }
    [self layoutIfNeeded];
    CGRect frame = self.frame;
    frame.size.height = [self caclulateHeight];
    self.frame = frame;
}

#pragma mark - PrivateMethod

- (CGFloat)caclulateHeight {
    return 10 + self.descriptionLabel.frame.size.height + 10 ;
}

@end
