//
//  ProcessCommentCell.h
//  Easyell
//
//  Created by guoshencheng on 4/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#define PROCESS_COMMENT_CELL @"PROCESS_COMMENT_CELL"

@interface ProcessCommentCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIImageView *avatarImageView;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *commenterNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel;
- (void)updateWithCommenterName:(NSString *)name andComment:(NSString *)comment andTime:(NSString *)time andAvatar:(NSString *)avaterUrl;

@end
