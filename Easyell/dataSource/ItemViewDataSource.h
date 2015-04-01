//
//  ItemViewDataSource.h
//  Easyell
//
//  Created by guoshencheng on 4/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ItemViewInfo.h"
#import "DetailCell.h"
#import "ButtonCell.h"
#import "TextCell.h"
#import "TitleCell.h"
#define DETAIL_CELL @"DETATIL_CELL"
#define BUTTON_CELL @"BUTTON_CELL"
#define TEXT_CELL @"TEXT_CELL"
#define TITLE_CELL @"TITLE_CELL"

typedef void (^ConfigureItemViewTableCellBlock) (UITableViewCell *cell, ItemViewEnum item);

@interface ItemViewDataSource : NSObject <UITableViewDataSource>

@property (strong, nonatomic) NSArray *items;

@property (strong, nonatomic) ConfigureItemViewTableCellBlock configureTableCellBlock;

- (ItemViewEnum)itemOfIndexPath:(NSIndexPath *)indexPath;

@end
