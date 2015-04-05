//
//  GroupListDataSource.h
//  Easyell
//
//  Created by guoshencheng on 4/5/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "GroupListCell.h"

typedef void (^ConfigureGroupListCellBlock) (UITableViewCell *cell, NSArray *projectList);

@interface GroupListDataSource : NSObject <UITableViewDataSource>

@property (strong, nonatomic) NSArray *groups;
@property (strong, nonatomic) ConfigureGroupListCellBlock configureGroupListCellBlock;

@end
