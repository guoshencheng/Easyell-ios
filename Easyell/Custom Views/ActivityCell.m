//
//  ActivityCell.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ActivityCell.h"

@implementation ActivityCell

- (void)awakeFromNib {
    self.avartarImageView.layer.cornerRadius = 5;
    
}

- (void)updateWithDescription:(NSString *)description andTime:(NSString *)time {
    [self updateFrameWithDescritption:description];
}

- (void)updateFrameWithDescritption:(NSString *)description {
    self.descriptionLabel.text = description;
    [self layoutIfNeeded];
    CGRect frame = self.frame;
    frame.size.height = [self caclulateHeight];
    self.frame = frame;
}

- (CGFloat)caclulateHeight {
    return 20 + self.descriptionLabel.frame.size.height + 20 + 10;
}

@end
