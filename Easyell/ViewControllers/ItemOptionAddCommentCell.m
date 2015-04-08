//
//  ItemOptionAddCommentCell.m
//  Easyell
//
//  Created by guoshencheng on 4/8/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemOptionAddCommentCell.h"

@implementation ItemOptionAddCommentCell

- (void)awakeFromNib {
    self.addCommentLabel.layer.cornerRadius = 5;
    self.addCommentLabel.layer.borderColor = [[UIColor colorWithRed:(222.0/255) green:(222.0/255) blue:(222.0/255) alpha:1] CGColor];
    self.addCommentLabel.layer.borderWidth = 1;
}

@end
