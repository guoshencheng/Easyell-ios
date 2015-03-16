//
//  ProjectListPanel.h
//  Easyell
//
//  Created by guoshencheng on 3/16/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "AutoLayoutView.h"
#import "ProjectListPanelDataSource.h"

@interface ProjectListPanel : AutoLayoutView

@property (strong, nonatomic) FMMoveTableView *ProjectOrGroupTableView;
@property (strong, nonatomic) ProjectListPanelDataSource *dataSrouce;

@end
