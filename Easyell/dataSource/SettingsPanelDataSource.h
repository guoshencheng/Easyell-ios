//
//  SettingsPanelDataSource.h
//  Easyell
//
//  Created by guoshencheng on 4/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProfileCell.h"
#import "SettingsCell.h"

typedef enum {
    profile = 0,
    changeUsername = 1,
    changePassword = 2,
    about = 3,
    help = 4
} SettingsCellEnum;

typedef void (^ConfigureSettingsPanelTableCellBlock) (UITableViewCell *cell, SettingsCellEnum item);

@interface SettingsPanelDataSource : NSObject <UITableViewDataSource>

@property (strong, nonatomic) NSArray *items;

- (NSString *)getTitleWithItem:(SettingsCellEnum)item;

@end
