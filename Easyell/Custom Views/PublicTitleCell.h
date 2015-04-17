//
//  PublicTitleCell.h
//  Easyell
//
//  Created by guoshencheng on 4/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#define PUBLIC_TITLE_CELL @"PUBLIC_TITLE_CELL"

@interface PublicTitleCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleCellTitleLabel;
- (void)updateTitleLabel:(NSString *)text;

@end
