//
//  SettingsPanel.h
//  Easyell
//
//  Created by guoshencheng on 4/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "AutoLayoutView.h"
#import "SettingsPanelDataSource.h"

@interface SettingsPanel : AutoLayoutView <UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet UILabel *logoutLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) SettingsPanelDataSource *settingsPanelDataSource;

@end
