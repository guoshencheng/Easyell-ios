//
//  ItemCell.m
//  Easyell
//
//  Created by guoshencheng on 4/4/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemCell.h"

@implementation ItemCell

- (void)awakeFromNib {
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    self.containerView.layer.cornerRadius = 5;
    self.containerView.layer.borderColor = [[UIColor colorWithRed:(13.0/255) green:(99.0/255) blue:(160.0/255) alpha:1] CGColor];;
    [self addShadow];
}

- (void)addShadow {
    [self.containerView.layer setShadowOffset:CGSizeMake(2, 2)];
    [self.containerView.layer setShadowRadius:2];
    [self.containerView.layer setShadowOpacity:0.3];
    [self.containerView.layer setShadowColor:[[UIColor blackColor] CGColor]];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {
    if (highlighted) {
        self.containerView.layer.borderWidth = 1;
    } else {
       self.containerView.layer.borderWidth = 0;
    }
}

@end
