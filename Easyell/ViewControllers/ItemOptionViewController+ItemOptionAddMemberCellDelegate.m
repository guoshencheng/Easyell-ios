//
//  ItemOptionViewController+ItemOptionAddMemberCellDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemOptionViewController+ItemOptionAddMemberCellDelegate.h"
#import "ItemOptionViewController+Animation.h"

@implementation ItemOptionViewController (ItemOptionAddMemberCellDelegate)

- (void)itemOptionAddMemberCellDidClickLabelCell:(ItemOptionAddMemberCell *)cell withSelectColorArray:(NSArray *)array{
    self.colorLabelListPanel.selectColors = [[NSMutableArray alloc] init];
    [self.colorLabelListPanel.selectColors addObjectsFromArray:array];
    [self.colorLabelListPanel reloadData];
    [self slideColorPanelToShow];
}

- (void)itemOptionAddMemberCell:(ItemOptionAddMemberCell *)cell didClickMemberIndex:(NSInteger)index {
    [self slideMemberPanelToShow];
}

@end
