//
//  ActivityCell.h
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define ACTIVITY_CELL @"ACTIVITY_CELL"

@interface ActivityCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *avartarImageView;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

- (void)updateWithDescription:(NSString *)description andTime:(NSString *)time;

@end
