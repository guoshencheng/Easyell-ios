//
//  SettingAvatarCell.h
//  Easyell
//
//  Created by guoshencheng on 4/2/14.
//  Copyright (c) 2014 Easyell, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingAvatarCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *smallAvatarImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mediumAvatarImageView;

- (void)reloadData;

@end
