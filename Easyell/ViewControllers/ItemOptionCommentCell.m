//
//  ItemOptionCommentCell.m
//  Easyell
//
//  Created by guoshencheng on 4/8/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemOptionCommentCell.h"

@implementation ItemOptionCommentCell

- (void)awakeFromNib {
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    self.avatarImageView.layer.cornerRadius = 5;
    self.containerView.layer.cornerRadius = 5;
    self.containerView.layer.borderColor = [[UIColor colorWithRed:(222.0/255) green:(222.0/255) blue:(222.0/255) alpha:1] CGColor];
    self.containerView.layer.borderWidth = 1;
    [self addShadow];
}

- (void)updateWithCommenterName:(NSString *)name andComment:(NSString *)comment andTime:(NSString *)time andAvatar:(NSString *)avaterUrl{
    self.commentLabel.text = comment;
    [self layoutIfNeeded];
    CGRect frame = self.frame;
    frame.size.height = [self caculateHeight];
    self.frame = frame;
}

- (CGFloat)caculateHeight {
    return 20 + 20 + self.commentLabel.frame.size.height + 20 + 20;
}

- (void)addShadow {
    [self.containerView.layer setShadowOffset:CGSizeMake(2, 2)];
    [self.containerView.layer setShadowRadius:2];
    [self.containerView.layer setShadowOpacity:0.3];
    [self.containerView.layer setShadowColor:[[UIColor blackColor] CGColor]];
}

@end
