//
//  ItemView.m
//  Easyell
//
//  Created by guoshencheng on 4/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemView.h"

@implementation ItemView

+ (instancetype)create {
    ItemView *itemView = [[[NSBundle mainBundle] loadNibNamed:@"ItemView" owner:nil options:nil] lastObject];
    itemView.translatesAutoresizingMaskIntoConstraints = NO;
    return itemView;
}

- (void)awakeFromNib {
    self.itemTableView.delegate = self;
    // Add data source
    self.itemViewDataSource = [ItemViewDataSource new];
    self.itemViewDataSource.items = [self createItemViewItemArray];
    __weak typeof(self) weakSelf = self;
    self.itemViewDataSource.configureTableCellBlock = ^(UITableViewCell *cell, ItemViewEnum item) {
        [weakSelf updateCell:cell ofItem:item];
    };
    self.itemTableView.dataSource = self.itemViewDataSource;
    // Register cells
    [self.itemTableView registerNib:[UINib nibWithNibName:@"DetailCell" bundle:nil] forCellReuseIdentifier:DETAIL_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"ButtonCell" bundle:nil] forCellReuseIdentifier:BUTTON_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"TextCell" bundle:nil] forCellReuseIdentifier:TEXT_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"TitleCell" bundle:nil] forCellReuseIdentifier:TITLE_CELL];
}

- (NSArray *)createItemViewItemArray {
    return @[@[@(ItemViewTitle), @(ItemViewDescription)],
             @[@(ItemViewDetails),@(ItemViewType),@(ItemViewRequester),@(ItemViewOwner)],
             @[@(ItemViewActivity), @(ItemViewAddComment)],
             @[@(ItemViewActions), @(ItemViewDelete)]];
}

- (void)updateCell:(UITableViewCell *)cell ofItem:(ItemViewEnum)item {
    NSString *title = [ItemViewInfo titleOfItem:item];
    if ([ItemViewInfo isButtonCell:item]) {
        [(ButtonCell *)cell updateLabel: title];
    } else if ([ItemViewInfo isDetailCell:item]) {
        [(DetailCell *)cell updateTitleLabel:title];
    } else if ([ItemViewInfo isTextCell:item]) {
        [(TextCell *)cell updateTitle:title];
    } else if ([ItemViewInfo isTitleCell:item]) {
        [(TitleCell *)cell updateLabel:title];
    }
}

@end
