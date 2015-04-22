//
//  TaskViewController+PublicMemberCellDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TaskViewController+PublicMemberCellDelegate.h"
#import "TaskViewController+Animation.h"

@implementation TaskViewController (PublicMemberCellDelegate)

- (void)publicMemberCellDidClickAddMember:(PublicMemberCell *)publicMemberCell {
    self.memberPanel.selectMembers = [[NSMutableArray alloc] initWithArray:publicMemberCell.memberListDatasource.members];
    [self slideMemberPanelToShow];
}

@end
