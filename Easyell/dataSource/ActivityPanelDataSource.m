//
//  ActivityPanelDataSource.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ActivityPanelDataSource.h"
#import "ActivityPanelMemberCell.h"
#import "ActivityCell.h"

@implementation ActivityPanelDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 1;
    } else {
        return self.activitys.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    if (indexPath.section == 0) {
        cell = [tableView dequeueReusableCellWithIdentifier:MEMBER_CELL];
        if (self.configureActivityPanelBlock) {
            self.configureActivityPanelBlock(cell, nil);
        }
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:ACTIVITY_CELL];
        if (self.configureActivityPanelBlock) {
            self.configureActivityPanelBlock(cell, [self.activitys objectAtIndex:indexPath.row]);
        }
    }
    return cell;
}


@end
