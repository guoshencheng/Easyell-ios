//
//  ProjectCollectViewDatasource.m
//  Easyell
//
//  Created by guoshencheng on 4/3/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProjectCollectViewDatasource.h"

@implementation ProjectCollectViewDatasource

- (NSArray *)itemsOfIndexPath:(NSIndexPath *)indexPath {
    return [self.itemsKind objectAtIndex:indexPath.item];
}

#pragma mark - datasource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.itemsKind.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:self.reuseId forIndexPath:indexPath];
    if (self.configureCollectionCellBlock) {
        self.configureCollectionCellBlock(cell, [self itemsOfIndexPath:indexPath]);
    }
    return cell;
}


@end
