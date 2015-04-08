//
//  ItemOptionTitleCell.h
//  Easyell
//
//  Created by guoshencheng on 4/8/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#define ITEMOPTION_TITLE_CELL @"ITEMOPTION_TITLE_CELL"
@interface ItemOptionTitleCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleCellTitleLabel;

- (void)updateTitleLabel:(NSString *)text;

@end
