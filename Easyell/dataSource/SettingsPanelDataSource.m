//
//  SettingsPanelDataSource.m
//  Easyell
//
//  Created by guoshencheng on 4/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SettingsPanelDataSource.h"

@implementation SettingsPanelDataSource

#pragma mark Public Methods

- (SettingsCellEnum)itemOfIndexPath:(NSIndexPath *)indexPath {
    return [[[self.items objectAtIndex:indexPath.section] objectAtIndex:indexPath.row] intValue];
}

- (NSString *)getTitleWithItem:(SettingsCellEnum)item {
    NSString *title = @"";
    switch (item) {
        case changePassword:
            title = @"Change Password";
            break;
        case changeUsername:
            title = @"Change Username";
            break;
        case about:
            title = @"About";
            break;
        case help:
            title = @"Help";
            break;
        default:
            break;
    }
    return title;
}

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self.items objectAtIndex:section] count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SettingsCellEnum item = [self itemOfIndexPath:indexPath];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[self reuseIdOfItemOptionCellEnum:item]];
    if (item != profile) {
        [(SettingsCell *)cell updateWithText:[self getTitleWithItem:item] andImage:nil];
    }
    return cell;
}

#pragma mark Private Methods

- (NSString *)reuseIdOfItemOptionCellEnum:(SettingsCellEnum)item {
    NSString *reuseId = @"";
    if (item == profile) {
        reuseId = PROFILE_CELL;
    } else {
        reuseId = SETTINGS_CELL;
    }
    return reuseId;
}

@end
