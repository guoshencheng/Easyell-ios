//
//  ActivityPanelMemberCell.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ActivityPanelMemberCell.h"
#import "MemberListCell.h"

@implementation ActivityPanelMemberCell

- (void)awakeFromNib {
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    [self configureAddMembersButton];
    [self configureMembersCollectionView];
}


#pragma mark - PublicMethod

- (void)updateWithMemberArray:(NSArray *)members {
    self.memberListDatasource.members = members;
    [self.memberCollectionView reloadData];
}

+ (CGFloat)caculateHeightOfHeightWithMembersCount:(NSInteger)membersCount {
    CGFloat rowFloat =  membersCount / 4.0;
    NSInteger rowInt = membersCount / 4;
    if (rowFloat != rowInt) {
        rowInt = rowInt + 1;
    }
    return 10 + rowInt * 50 + (rowInt - 1) * 10 + 70;
}

#pragma mark - PrivateMethod

- (void)configureMembersCollectionView {
    self.memberCollectionView.delegate = self;
    self.memberListDatasource = [MemberListDataSource new];
    self.memberListDatasource.configureMemberListCellBlock = ^(UICollectionViewCell *cell, NSDictionary *member) {
        
    };
    self.memberCollectionView.dataSource = self.memberListDatasource;
    [self.memberCollectionView registerNib:[UINib nibWithNibName:@"MemberListCell" bundle:nil] forCellWithReuseIdentifier:MEMBERLIST_CELL];
}

- (void)configureAddMembersButton  {
    self.addMembersButton.layer.cornerRadius = 10;
    self.addMembersButton.layer.borderColor = [[UIColor colorWithRed:(49)/255.0f green:(131)/255.0f blue:(226)/255.0f alpha:1] CGColor];
    self.addMembersButton.layer.borderWidth = 1;
}

@end
