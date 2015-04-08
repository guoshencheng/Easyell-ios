//
//  ItemOptionViewController+configuration.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemOptionViewController+configuration.h"

@implementation ItemOptionViewController (configuration)

- (void)configureViews {
    [self configureTableView];
}

- (void)configureTableView {
    self.itemTableView.delegate = self;
    // Add data source
    self.itemViewDataSource = [ItemViewDataSource new];
    self.itemViewDataSource.items = [self createItemViewItemArray];
    self.itemViewDataSource.comments = [self getCommentArray];
    __weak typeof(self) weakSelf = self;
    self.itemViewDataSource.configureTableCellBlock = ^(UITableViewCell *cell, ItemOptionCellEnum item) {
        [weakSelf updateCell:cell ofItem:item];
    };
    self.itemTableView.dataSource = self.itemViewDataSource;
    // Register cells
    [self.itemTableView registerNib:[UINib nibWithNibName:@"ItemOptionTitleCell" bundle:nil] forCellReuseIdentifier:ITEMOPTION_TITLE_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"ItemOptionDescriptionCell" bundle:nil] forCellReuseIdentifier:ITEMOPTION_DESCRIPTION_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"ItemOptionAddMemberCell" bundle:nil] forCellReuseIdentifier:ITEMOPTION_ADDMEMBER_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"ItemOptionAddCommentCell" bundle:nil] forCellReuseIdentifier:ITEMOPTION_ADDCOMMENT_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"ItemOptionCommentCell" bundle:nil] forCellReuseIdentifier:ITEMOPTION_COMMENT_CELL];
}

- (NSArray *)createItemViewItemArray {
    return @[@(ItemTitleCell), @(ItemDescriptCell), @(ItemAddMemberCell), @(ItemAddCommentCell), @(ItemCommentCell)];
}

- (NSArray *)getAddMembersArray {
    return @[@[@(1), @(1), @(1), @(1), @(1)],
             @[@(1), @(1), @(1)],
             @[@(1), @(1), @(1), @(1), @(1)]];
}

- (NSArray *)getCommentArray {
    return @[@(1), @(1), @(1), @(1), @(1), @(1), @(1), @(1), @(1)];
}

- (void)updateCell:(UITableViewCell *)cell ofItem:(ItemOptionCellEnum)item {
    if (item == ItemTitleCell) {
        [(ItemOptionTitleCell *)cell updateTitleLabel:@"guoguoguoguoguogu天之道损有余而补不足，是故虚胜实，不足胜有余,其意博，其里奥，其趣深"];
    } else if (item == ItemDescriptCell) {
        [(ItemOptionDescriptionCell *)cell updateDescriptionLabel:@"description描述description描述description描述description描述description描述description描述description描述description描述description描述description描述description描述description描述description描述"];
    } else if (item == ItemAddMemberCell) {
        [(ItemOptionAddMemberCell *)cell updateWithMemberList:[self getAddMembersArray]];
    } else if (item == ItemAddCommentCell) {
        
    } else if (item == ItemCommentCell) {
        [(ItemOptionCommentCell *)cell updateWithCommenterName:nil andComment:@"commencommentcommentcommentcommentcommentcommentcommentcommentcommentt" andTime:nil andAvatar:nil];
    }
    
}

@end
