//
//  PublicColorsCell.m
//  Easyell
//
//  Created by guoshencheng on 4/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "PublicColorsCell.h"

@implementation PublicColorsCell

- (void)awakeFromNib {
    self.colors = [[NSArray alloc] init];
    [self.colorCollectionView registerNib:[UINib nibWithNibName:@"ColorLabelCollectViewCell" bundle:nil] forCellWithReuseIdentifier:COLOR_LABEL_COLLECTIONVIEW_CELL];
    self.colorCollectionView.delegate = self;
    self.colorCollectionView.dataSource = self;
}


- (void)updateWithColors:(NSArray *)colors {
    self.colors = colors;
    [self.colorCollectionView reloadData];
}

#pragma mark - datasource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.colors.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ColorLabelCollectViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:COLOR_LABEL_COLLECTIONVIEW_CELL forIndexPath:indexPath];
    [cell updateWithColor:[self.colors objectAtIndex:indexPath.row]];
    return cell;
}

@end
