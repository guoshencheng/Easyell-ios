//
//  ProjectViewController+configuration.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProjectViewController+configuration.h"
#import "UIScreen+Utilities.h"

@implementation ProjectViewController (configuration)

- (void)configureViews {
    [self configureCollectionView];
}

- (void)configureCollectionView {
    ((UICollectionViewFlowLayout *)(self.collectionView.collectionViewLayout)).itemSize = CGSizeMake([UIScreen width], [UIScreen height] - 100);
    self.collectViewDatasource = [ProjectCollectViewDatasource new];
    self.collectViewDatasource.itemsKind = [[NSMutableArray alloc] initWithArray:[self createItems]];
    __weak typeof(self) weakSelf = self;
    self.collectViewDatasource.configureCollectionCellBlock = ^(UICollectionViewCell *cell, NSArray *items) {
        [(ItemKindCell *)cell updateWithItems:items];
        ((ItemKindCell *)cell).delegate = weakSelf;
    };
    self.collectViewDatasource.reuseId = ITEM_KIND_CELL;
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self.collectViewDatasource;
    [self.collectionView registerNib:[UINib nibWithNibName:@"ItemKindCell" bundle:nil] forCellWithReuseIdentifier:ITEM_KIND_CELL];
}

- (NSArray *)createItems {
    return @[@[@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1)],
             @[@(1),@(1),@(1),@(1),@(1),@(1),@(1)],
             @[@(1),@(1),@(1),@(1),@(1),@(1)],
             ];
}

@end
