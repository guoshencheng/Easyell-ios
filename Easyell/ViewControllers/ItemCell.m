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
    self.containerView.layer.cornerRadius = 5;
    [self addShadow];
}

- (void)addShadow {
    [self.containerView.layer setShadowOffset:CGSizeMake(2, 2)];
    [self.containerView.layer setShadowRadius:2];
    [self.containerView.layer setShadowOpacity:0.3];
    [self.containerView.layer setShadowColor:[[UIColor blackColor] CGColor]];
}

@end
