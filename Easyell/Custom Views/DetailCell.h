//
//  DetailCell.h
//  Easyell
//
//  Created by guoshencheng on 4/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;
@property (weak, nonatomic) IBOutlet UIImageView *arrowImageView;

- (void)updateTitleLabel:(NSString *)text;
- (CGFloat)getCellHeight;
- (void)updateValueLabel:(NSString *)text;


@end
