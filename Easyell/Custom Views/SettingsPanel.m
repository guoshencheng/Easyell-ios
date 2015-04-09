//
//  SettingsPanel.m
//  Easyell
//
//  Created by guoshencheng on 4/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SettingsPanel.h"

@implementation SettingsPanel

+ (instancetype)create {
    SettingsPanel *settingsPanel = [[[NSBundle mainBundle]loadNibNamed:@"SettingsPanel" owner:nil options:nil] lastObject];
    settingsPanel.translatesAutoresizingMaskIntoConstraints = NO;
    return settingsPanel;
}

- (void)awakeFromNib {
    self.tableView.delegate = self;
    self.settingsPanelDataSource = [SettingsPanelDataSource new];
    self.settingsPanelDataSource.items = [self getItemArray];
    self.tableView.dataSource = self.settingsPanelDataSource;
    [self.tableView registerNib:[UINib nibWithNibName:@"ProfileCell" bundle:nil] forCellReuseIdentifier:PROFILE_CELL];
    [self.tableView registerNib:[UINib nibWithNibName:@"SettingsCell" bundle:nil] forCellReuseIdentifier:SETTINGS_CELL];
}

- (NSArray *)getItemArray {
    return @[@[@(profile)],
             @[@(changeUsername), @(changePassword)],
             @[@(about), @(help)]];
}

@end
