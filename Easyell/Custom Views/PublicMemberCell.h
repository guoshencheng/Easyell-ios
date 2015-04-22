//
//  PublicMemberCell
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MemberListDataSource.h"
#define PUBLIC_MEMBER_CELL @"PUBLIC_MEMBER_CELL"

@protocol PublicMemberCellDelegate;

@interface PublicMemberCell : UITableViewCell <UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *bottomViewHeightConstraint;
@property (weak, nonatomic) IBOutlet UIButton *addMembersButton;
@property (weak, nonatomic) IBOutlet UICollectionView *memberCollectionView;
@property (strong, nonatomic) MemberListDataSource *memberListDatasource;
@property (weak, nonatomic) id<PublicMemberCellDelegate>delegate;
@property (assign, nonatomic) BOOL editable;

- (BOOL)updateWithMemberArray:(NSArray *)menbers andEditable:(BOOL)editable;
+ (CGFloat)caculateHeightOfHeightWithMembersCount:(NSInteger)membersCount;

@end

@protocol PublicMemberCellDelegate <NSObject>
@optional
- (void)publicMemberCellDidClickAddMember:(PublicMemberCell *)publicMemberCell;
@end