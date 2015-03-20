//
//  ProjectListPanelDataSource.h
//  Easyell
//
//  Created by guoshencheng on 3/16/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "FMMoveTableView.h"

#define CELL_IDENTIFIER @"CELL_IDENTIFIER"
@interface ProjectListPanelDataSource : NSObject <FMMoveTableViewDataSource>

@property (nonatomic, strong) NSArray *projectList;
- (id)initWithProjectArray:(NSArray *)projectArray;

@end
