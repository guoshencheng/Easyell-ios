//
//  ItemViewDataSource.h
//  Easyell
//
//  Created by guoshencheng on 4/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//


#import "ItemOptionTitleCell.h"
#import "ItemOptionDescriptionCell.h"
#import "ItemOptionAddMemberCell.h"
#import "ItemOptionAddCommentCell.h"
#import "ItemOptionCommentCell.h"

typedef enum {
    ItemTitleCell = 0,
    ItemDescriptCell = 1,
    ItemAddMemberCell = 2,
    ItemAddCommentCell = 3,
    ItemCommentCell = 4
} ItemOptionCellEnum;

typedef void (^ConfigureItemViewTableCellBlock) (UITableViewCell *cell, ItemOptionCellEnum item);

@interface ItemViewDataSource : NSObject <UITableViewDataSource>

@property (strong, nonatomic) NSArray *items;
@property (strong, nonatomic) NSArray *comments;

@property (strong, nonatomic) ConfigureItemViewTableCellBlock configureTableCellBlock;
- (ItemOptionCellEnum)itemOfIndexPath:(NSIndexPath *)indexPath;

@end
