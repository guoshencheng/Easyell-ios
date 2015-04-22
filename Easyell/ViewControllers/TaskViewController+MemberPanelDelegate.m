//
//  TaskViewController+MemberPanelDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TaskViewController+MemberPanelDelegate.h"

@implementation TaskViewController (MemberPanelDelegate)

- (void)memberPanel:(MemberPanel *)mamberPanel didModifySelectedMembers:(NSArray *)selectMemebers {
    self.taskViewControllerDataSource.members = selectMemebers;
    PublicMemberCell *cell = (PublicMemberCell *)[self.itemTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:2]];
    BOOL shouldReloadData = [cell updateWithMemberArray:selectMemebers];
    if (shouldReloadData) {
        [self.itemTableView reloadData];
    }
}

@end
