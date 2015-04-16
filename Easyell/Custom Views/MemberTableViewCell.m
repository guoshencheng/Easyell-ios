//
//  MemberTableViewCell.m
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "MemberTableViewCell.h"

@implementation MemberTableViewCell

- (void)awakeFromNib {
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    self.avatarImageView.layer.cornerRadius = 5;
}

- (void)updateWithAvatarImageUrl:(NSString *)avatarUrl andNameText:(NSString *)nameText {
    self.nameLabel.text = nameText;
}

@end
