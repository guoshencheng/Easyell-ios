//
//  GroupListCell.h
//  Easyell
//
//  Created by guoshencheng on 4/5/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HighlightableTableCell.h"
#define GROUP_LIST_CELL @"GROUP_LIST_CELL"

@interface GroupListCell : HighlightableTableCell
@property (weak, nonatomic) IBOutlet UIImageView *groupListCellImageView;
@property (weak, nonatomic) IBOutlet UILabel *groupListCellTitleLabel;

@end
