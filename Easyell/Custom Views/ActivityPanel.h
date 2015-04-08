//
//  ActivityPanel.h
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "AutoLayoutView.h"
#import "ActivityPanelDataSource.h"

@interface ActivityPanel : AutoLayoutView <UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *topbar;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray *members;
@property (strong, nonatomic) ActivityPanelDataSource *activityPanelDatasource;
@end
