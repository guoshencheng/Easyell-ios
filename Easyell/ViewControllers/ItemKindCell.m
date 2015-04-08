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
    self.containerView.layer.cornerRadius = 5;
    self.moveTableView.delegate = self;
    self.itemListDataSource = [ItemListDatasource new];
    [self.moveTableView registerNib:[UINib nibWithNibName:@"ItemCell" bundle:nil] forCellReuseIdentifier:ITEM_CELL];
    self.moveTableView.dataSource = self.itemListDataSource;
}

- (void)updateWithItems:(NSArray *)items {
    self.items = items;
    self.moveTableViewHeightConstraint.constant = [self caculateHeightWithCellCount:self.items.count];
    [self layoutIfNeeded];
    self.itemListDataSource.itemList = items;
    [self.moveTableView reloadData];
}

#pragma mark - Table view delegate

- (CGFloat)tableView:(FMMoveTableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
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

#pragma mark - PrivateMethod

- (CGFloat)caculateHeightWithCellCount:(NSInteger)count {
    CGFloat height = 10 + 70 * count + 45;
    if (height > self.frame.size.height - 20) {
        height = self.frame.size.height - 20;
    }
    return height;
}

@end
