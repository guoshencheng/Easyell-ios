//
//  ItemListDatasource.m
//  Easyell
//
//  Created by guoshencheng on 4/4/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemListDatasource.h"
#import "ItemCell.h"


@implementation ItemListDatasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(FMMoveTableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.itemList count];
}

- (UITableViewCell *)tableView:(FMMoveTableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FMMoveTableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:ITEM_CELL forIndexPath:indexPath];
    if ([tableView indexPathIsMovingIndexPath:indexPath])
    {
        [cell prepareForMove];
    }
    else
    {
        if (tableView.movingIndexPath != nil) {
            indexPath = [tableView adaptedIndexPathForRowAtIndexPath:indexPath];
        }
        cell.shouldIndentWhileEditing = NO;
        cell.showsReorderControl = NO;
    }
    
    return cell;
}


- (BOOL)moveTableView:(FMMoveTableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}


- (void)moveTableView:(FMMoveTableView *)tableView moveRowFromIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
    NSInteger item = [[self.itemList objectAtIndex:fromIndexPath.row] integerValue];
    NSMutableArray *itemGroup = [[NSMutableArray alloc] initWithArray:self.itemList];
    [itemGroup removeObjectAtIndex:fromIndexPath.row];
    [itemGroup insertObject:@(item) atIndex:toIndexPath.row];
    self.itemList = itemGroup;
}

@end
