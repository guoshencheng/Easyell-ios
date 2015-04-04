//
//  ItemKindCell.m
//  Easyell
//
//  Created by guoshencheng on 4/3/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemKindCell.h"

@implementation ItemKindCell

- (void)awakeFromNib {
    self.moveTableView.delegate = self;
    self.itemListDataSource = [ItemListDatasource new];
    [self.moveTableView registerNib:[UINib nibWithNibName:@"ItemCell" bundle:nil] forCellReuseIdentifier:ITEM_CELL];
    self.moveTableView.dataSource = self.itemListDataSource;
}

- (void)updateWithItems:(NSArray *)items {
    self.items = items;
    self.itemListDataSource.itemList = items;
    [self.moveTableView reloadData];
}

#pragma mark - Table view delegate

- (CGFloat)tableView:(FMMoveTableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}

- (NSIndexPath *)moveTableView:(FMMoveTableView *)tableView targetIndexPathForMoveFromRowAtIndexPath:(NSIndexPath *)sourceIndexPath toProposedIndexPath:(NSIndexPath *)proposedDestinationIndexPath
{
    
    return proposedDestinationIndexPath;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if ([self.delegate respondsToSelector:@selector(ItemKindCell:didClickItem:)]) {
        [self.delegate ItemKindCell:self didClickItem:indexPath];
    }
}

@end
