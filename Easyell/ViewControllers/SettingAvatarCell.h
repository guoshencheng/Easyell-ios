//
//  SettingAvatarCell.h
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingAvatarCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *smallAvatarImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mediumAvatarImageView;

- (void)reloadData;

@end
