//
//  MemberCell.h
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MemberListDataSource.h"

#define MEMBER_CELL @"MEMBER_CELL"

@interface MemberCell : UITableViewCell <UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *addMembersButton;
@property (weak, nonatomic) IBOutlet UICollectionView *memberCollectionView;
@property (strong, nonatomic) MemberListDataSource *memberListDatasource;

- (void)updateWithMemberArray:(NSArray *)menbers;
+ (CGFloat)caculateHeightOfHeightWithMembersCount:(NSInteger)membersCount;

@end
