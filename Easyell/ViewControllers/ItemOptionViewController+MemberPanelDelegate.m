//
//  ItemOptionViewController+MemberPanelDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/16/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemOptionViewController+MemberPanelDelegate.h"

@implementation ItemOptionViewController (MemberPanelDelegate)

- (void)memberPanel:(MemberPanel *)mamberPanel didModifySelectedMembers:(NSArray *)selectMemebers {
    [self.membersList replaceObjectAtIndex:mamberPanel.currentMembersIndex withObject:mamberPanel.selectMembers];
    [self.itemTableView reloadData];
}

@end
