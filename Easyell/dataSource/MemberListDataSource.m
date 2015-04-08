//
//  MemberListDataSource.m
//  Easyell
//
//  Created by guoshencheng on 4/8/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "MemberListDataSource.h"
#import "MemberListCell.h"

@implementation MemberListDataSource

- (NSArray *)itemsOfIndexPath:(NSIndexPath *)indexPath {
    return [self.members objectAtIndex:indexPath.item];
}

#pragma mark - datasource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.members.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:MEMBERLIST_CELL forIndexPath:indexPath];
    if (self.configureMemberListCellBlock) {
        
    }
    return cell;
}

@end
