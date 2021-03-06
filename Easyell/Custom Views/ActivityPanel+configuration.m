//
//  ActivityPanel+configuration.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ActivityPanel+configuration.h"
#import "ActivityCell.h"
#import "PublicMemberCell.h"

@implementation ActivityPanel (configuration)

- (void)configureViews {
    self.members = [self getMemberArray];
    [self configureTableView];
}

- (void)configureTableView {
    self.tableView.delegate = self;
    self.activityPanelDatasource = [ActivityPanelDataSource new];
    self.activityPanelDatasource.activitys = [self getActivityArray];
    __weak typeof(self) weakSelf = self;
    self.activityPanelDatasource.configureActivityPanelBlock = ^(UITableViewCell *cell, NSDictionary *activity) {
        if ([cell isKindOfClass:[PublicMemberCell class]]) {
            [(PublicMemberCell *)cell updateWithMemberArray:weakSelf.members andEditable:YES];
        } else {
            [(ActivityCell *)cell updateWithDescription:@"shencheng guo added xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx to Sign in and up" andTime:nil];
        }
    };
    self.tableView.dataSource = self.activityPanelDatasource;
    [self.tableView registerNib:[UINib nibWithNibName:@"ActivityCell" bundle:nil] forCellReuseIdentifier:ACTIVITY_CELL];
    [self.tableView registerNib:[UINib nibWithNibName:@"PublicMemberCell" bundle:nil] forCellReuseIdentifier:PUBLIC_MEMBER_CELL];
}

- (NSArray *)getActivityArray{
    return @[@(1), @(1), @(1), @(1), @(1), @(1), @(1), @(1), @(1), @(1)];
}

- (NSArray *)getMemberArray {
    return @[@(1), @(1), @(1), @(1), @(1), @(1), @(1), @(1), @(1), @(1), @(1)];
}

@end
