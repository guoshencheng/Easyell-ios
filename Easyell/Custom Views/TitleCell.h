//
//  TitleCell.h
//  Easyell
//
//  Created by guoshencheng on 4/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TitleCell : UITableViewCell

- (void)updateLabel:(NSString *)text;
- (CGFloat)getCellHeight;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end
