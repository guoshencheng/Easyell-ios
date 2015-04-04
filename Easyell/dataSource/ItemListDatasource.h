//
//  ItemListDatasource.h
//  Easyell
//
//  Created by guoshencheng on 4/4/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "FMMoveTableView.h"
#define ITEM_CELL @"ITEM_CELL"

@interface ItemListDatasource : NSObject <FMMoveTableViewDataSource>

@property (nonatomic, strong) NSArray *itemList;

@end
