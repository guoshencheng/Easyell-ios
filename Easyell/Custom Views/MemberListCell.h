//
//  MemberListCell.h
//  Easyell
//
//  Created by guoshencheng on 4/8/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define MEMBERLIST_CELL @"MEMBERLIST_CELL"

@interface MemberListCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rankImageView;

@end
