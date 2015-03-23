//
//  SettingsDataSource.h
//  Easyell
//
//  Created by guoshencheng on 4/2/14.
//  Copyright (c) 2014 Easyell, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SettingItemInfo.h"

#define AVATAR_CELL_REUSE_ID @"AVATAR_CELL"
#define SECTION_CELL_REUSE_ID @"SECTION_CELL"
#define INFO_CELL_REUSE_ID @"INFO_CELL"
#define OPTION_CELL_REUSE_ID @"OPTION_CELL"
#define BUTTON_CELL_REUSE_ID @"BUTTON_CELL"

typedef void (^ConfigureSettingTableCellBlock) (UITableViewCell *cell, SettingItemEnum item);

@interface SettingsDataSource : NSObject <UITableViewDataSource>

@property (strong, nonatomic) NSArray *items;

@property (strong, nonatomic) ConfigureSettingTableCellBlock configureTableCellBlock;

- (SettingItemEnum)itemOfIndexPath:(NSIndexPath *)indexPath;

@end
