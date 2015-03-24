//
//  SettingsDataSource.m
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//

#import "SettingsDataSource.h"

@implementation SettingsDataSource

#pragma mark Public Methods

- (SettingItemEnum)itemOfIndexPath:(NSIndexPath *)indexPath {
  NSNumber *item = [[self.items objectAtIndex:indexPath.section] objectAtIndex:indexPath.item];
  return [item intValue];
}

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  NSMutableArray *currentSectionItem = [self.items objectAtIndex:section];
  return currentSectionItem.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  SettingItemEnum item = [self itemOfIndexPath:indexPath];
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

- (NSString *)reuseIdOfItem:(SettingItemEnum)item {
  if ([SettingItemInfo isAvatarItem:item]) {
    return AVATAR_CELL_REUSE_ID;
  } else if ([SettingItemInfo isSectionItem:item]) {
    return SECTION_CELL_REUSE_ID;
  } else if ([SettingItemInfo isInfoItem:item]) {
    return INFO_CELL_REUSE_ID;
  } else if ([SettingItemInfo isOptionItem:item]) {
    return OPTION_CELL_REUSE_ID;
  } else if ([SettingItemInfo isButtonItem:item]) {
    return BUTTON_CELL_REUSE_ID;
  }
  return SECTION_CELL_REUSE_ID;
}

@end
