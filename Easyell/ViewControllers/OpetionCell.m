//
//  OpetionCell.m
//  Easyell
//
//  Created by guoshencheng on 4/8/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "OpetionCell.h"
#import "MemberListCell.h"

@implementation OpetionCell

- (void)awakeFromNib {
    //[self setSelectionStyle:UITableViewCellSelectionStyleNone];
    self.categoryImageView.layer.cornerRadius = 5;
    [self.memberCollectionView registerNib:[UINib nibWithNibName:@"MemberListCell" bundle:nil] forCellWithReuseIdentifier:MEMBERLIST_CELL];
    self.memberCollectionView.delegate = self;
    self.memberCollectionView.dataSource = self;
}

//- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {
//    if (highlighted) {
//        self.backgroundColor = [UIColor colorWithRed:(222.0 / 255) green:(222.0 / 255) blue:(222.0 / 255) alpha:1];
//    } else {
//        self.backgroundColor = [UIColor whiteColor];
//    }
//}

- (void)updateWithMembers:(NSArray *)members {
    self.members = members;
    [self.memberCollectionView reloadData];

}

- (void)updateToMembersCell {
    self.categoryImageView.backgroundColor = [UIColor blackColor];
    ((UICollectionViewFlowLayout *)self.memberCollectionView.collectionViewLayout).itemSize = CGSizeMake(25, 25);
}

- (void)updateToLabelsCell {
    self.categoryImageView.backgroundColor = [UIColor grayColor];
    ((UICollectionViewFlowLayout *)self.memberCollectionView.collectionViewLayout).itemSize = CGSizeMake(45, 25);
}

#pragma mark - datasource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.members.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MemberListCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:MEMBERLIST_CELL forIndexPath:indexPath];
    return cell;
}

@end
