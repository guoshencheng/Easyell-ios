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

- (ItemViewEnum)itemOfIndexPath:(NSIndexPath *)indexPath {
    NSNumber *item = [[self.items objectAtIndex:indexPath.section] objectAtIndex:indexPath.item];
    return [item intValue];
}

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSMutableArray *currentSectionItem = [self.items objectAtIndex:section];
    return currentSectionItem.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ItemViewEnum item = [self itemOfIndexPath:indexPath];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[self reuseIdOfItem:item]];
    if (self.configureTableCellBlock) {
        self.configureTableCellBlock(cell, item);
    }
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.items.count;
}



#pragma mark Private Methods

- (NSString *)reuseIdOfItem:(ItemViewEnum)item {
    if ([ItemViewInfo isDetailCell:item]) {
        return DETAIL_CELL;
    } else if ([ItemViewInfo isButtonCell:item]) {
        return BUTTON_CELL;
    } else if ([ItemViewInfo isTextCell:item]) {
        return TEXT_CELL;
    } else {
        return TITLE_CELL;
    }
}

@end
