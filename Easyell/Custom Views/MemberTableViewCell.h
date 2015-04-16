//
//  MemberTableViewCell.h
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#define MEMBERTABLEVIEW_CELL @"MEMBERTABLEVIEW_CELL"

@interface MemberTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

- (void)updateWithAvatarImageUrl:(NSString *)avatarUrl andNameText:(NSString *)nameText;

@end
