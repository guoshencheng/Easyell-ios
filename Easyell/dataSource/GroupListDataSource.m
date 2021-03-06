//
//  GroupListDataSource.m
//  Easyell
//
//  Created by guoshencheng on 4/5/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "GroupListDataSource.h"

@implementation GroupListDataSource


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self.groups objectAtIndex:section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    GroupListCell *cell = [tableView dequeueReusableCellWithIdentifier:GROUP_LIST_CELL forIndexPath:indexPath];
    if (self.configureGroupListCellBlock) {
        self.configureGroupListCellBlock(cell, [self projectOfIndexPath:indexPath]);
    }
    return cell;
}

- (NSArray *)projectOfIndexPath:(NSIndexPath *)indexPath {
    return [[self.groups objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
}

@end
