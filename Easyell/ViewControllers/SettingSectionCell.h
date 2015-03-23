//
//  SettingSectionCell.h
//  Easyell
//
//  Created by guoshencheng on 4/2/14.
//  Copyright (c) 2014 Easyell, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingSectionCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

- (void)updateWithTitle:(NSString *)title;

@end
