//
//  ItemKindCell.h
//  Easyell
//
//  Created by guoshencheng on 4/3/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FMMoveTableView.h"
#import "ItemListDatasource.h"
#define ITEM_KIND_CELL @"ITEM_KIND_CELL"

@protocol ItemKindCellDelegate;

@interface ItemKindCell : UICollectionViewCell <FMMoveTableViewDelegate>

@property (strong, nonatomic) NSArray *items;
@property (strong, nonatomic) ItemListDatasource *itemListDataSource;
@property (weak, nonatomic) IBOutlet FMMoveTableView *moveTableView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *moveTableViewHeightConstraint;
@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) id<ItemKindCellDelegate>delegate;

- (void)updateWithItems:(NSArray *)items;

@end
@protocol ItemKindCellDelegate <NSObject>

- (void)ItemKindCell:(ItemKindCell *)cell didClickItem:(NSIndexPath *)indexPath;

@end
