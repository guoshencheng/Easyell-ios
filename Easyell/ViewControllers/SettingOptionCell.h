//
//  SettingOptionCell.h
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HighlightableTableCell.h"

@interface SettingOptionCell : HighlightableTableCell

@property (weak, nonatomic) IBOutlet UIView *optionBackgroundView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *supTitleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *arrowImageView;

- (void)updateWithTitle:(NSString *)title supTitle:(NSString *)supTitle;

@end
