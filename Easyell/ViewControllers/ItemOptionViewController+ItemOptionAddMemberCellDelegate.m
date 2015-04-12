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

- (void)itemOptionAddMemberCellDidClickLabelCell:(ItemOptionAddMemberCell *)cell {
    [self slideColorPanelToShow];
}

@end
