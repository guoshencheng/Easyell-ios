//
//  PublicMemberCell.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "PublicMemberCell.h"
#import "MemberListCell.h"

@implementation PublicMemberCell

- (void)awakeFromNib {
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    [self configureAddMembersButton];
    [self configureMembersCollectionView];
}

- (IBAction)didClickAddMember:(id)sender {
    if ([self.delegate respondsToSelector:@selector(publicMemberCellDidClickAddMember:)]) {
        [self.delegate publicMemberCellDidClickAddMember:self];
    }
}

#pragma mark - PublicMethod

- (BOOL)updateWithMemberArray:(NSArray *)members {
    BOOL shouldChangeHeight = NO;
    self.memberListDatasource.members = members;
    [self.memberCollectionView reloadData];
    if (self.frame.size.height == [PublicMemberCell caculateHeightOfHeightWithMembersCount:members.count]) {
        shouldChangeHeight = NO;
    } else {
        CGRect frame = self.frame;
        frame.size.height = [PublicMemberCell caculateHeightOfHeightWithMembersCount:members.count];
        self.frame = frame;
        shouldChangeHeight = YES;
    }
    return shouldChangeHeight;
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
