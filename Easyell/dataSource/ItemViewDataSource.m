//
//  ItemViewDataSource.m
//  Easyell
//
//  Created by guoshencheng on 4/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemViewDataSource.h"

@implementation ItemViewDataSource

#pragma mark Public Methods

- (ItemOptionCellEnum)itemOfIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row <= 3) {
        return [[self.items objectAtIndex:indexPath.row] intValue];
    } else {
        return [[self.items objectAtIndex:4] intValue];
    }
}

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count + self.comments.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ItemOptionCellEnum item = [self itemOfIndexPath:indexPath];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[self reuseIdOfItemOptionCellEnum:item]];
    if (self.configureTableCellBlock) {
        self.configureTableCellBlock(cell, item);
    }
    return cell;
}

#pragma mark Private Methods

- (NSString *)reuseIdOfItemOptionCellEnum:(ItemOptionCellEnum)item {
    NSString *reuseId = @"";
    switch (item) {
        case ItemTitleCell:
            reuseId = ITEMOPTION_TITLE_CELL;
            break;
        case ItemDescriptCell:
            reuseId = ITEMOPTION_DESCRIPTION_CELL;
            break;
        case ItemAddMemberCell:
            reuseId = ITEMOPTION_ADDMEMBER_CELL;
            break;
        case ItemAddCommentCell:
            reuseId = ITEMOPTION_ADDCOMMENT_CELL;
            break;
        case ItemCommentCell:
            reuseId = ITEMOPTION_COMMENT_CELL;
            break;
        default:
            break;
    }
    return reuseId;
}

@end
