//
//  HomeViewController+configuration.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController+configuration.h"

@implementation HomeViewController (configuration)

- (void)configureViews {
    [self configureGroupTableView];
}

- (void)configureGroupTableView {
    self.groupTableView.delegate = self;
    self.groupListDataSource = [GroupListDataSource new];
    self.groupListDataSource.groups = [self getGroupList];
    self.groupListDataSource.configureGroupListCellBlock = ^(UITableViewCell *cell, NSArray *projectList) {
        
    };
    self.groupTableView.dataSource = self.groupListDataSource;
    [self.groupTableView registerNib:[UINib nibWithNibName:@"GroupListCell" bundle:nil] forCellReuseIdentifier:GROUP_LIST_CELL];
    [self.view layoutIfNeeded];
}

- (NSArray *)getGroupList {
    return @[
             @[@(1),@(1),@(1),@(1),@(1),@(1)],
             @[@(1),@(1),@(1),@(1),@(1)],
             @[@(1),@(1)],
             @[@(1),@(1),@(1),@(1),@(1),@(1),@(1)]
             ];
}

@end
