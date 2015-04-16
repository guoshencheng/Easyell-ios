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
    [self initColorList];
    [self initMembersList];
    [self configureTableView];
    [self configureSlideMotion];
    [self addColorLabelPanel];
    [self addMemberPanel];
}

- (void)addColorLabelPanel {
    self.colorLabelListPanel = [ColorLabelListPanel create];
    [self.view addSubview:self.colorLabelListPanel];
    [self.colorLabelListPanel setTopSpace:45];
    [self.colorLabelListPanel setRightSpace:COLOR_LABEL_LISTPANEL_WIDTH];
    [self.colorLabelListPanel setBottomSpace: -45];
    [self.colorLabelListPanel setWidthConstant:COLOR_LABEL_LISTPANEL_WIDTH];
    [self.rightSlideMotion attachToView:self.colorLabelListPanel];
    [self.view layoutIfNeeded];
    self.colorLabelListPanel.delegate = self;
}

- (void)addMemberPanel {
    self.memberPanel = [MemberPanel create];
    self.memberPanel.members = @[@"shencheng guo", @"younger zhou" ,@"leo zhou", @"peter zhao", @"sherlock yao"];
    [self.view addSubview:self.memberPanel];
    [self.memberPanel setTopSpace:45];
    [self.memberPanel setRightSpace:MEMBER_PANEL_WIDTH];
    [self.memberPanel setBottomSpace: -45];
    [self.memberPanel setWidthConstant:MEMBER_PANEL_WIDTH];
    [self.rightSlideMotion attachToView:self.memberPanel];
    [self.view layoutIfNeeded];
}

- (void)configureSlideMotion {
    self.rightSlideMotion = [SlideMotion new];
    self.rightSlideMotion.direction = SlideMotionDirectionHorizontal;
    self.rightSlideMotion.delegate = self;
    self.rightSlideMotion.dataSource = self;
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

- (void)initMembersList {
    self.membersList = [[NSMutableArray alloc] initWithArray:@[@[@(1), @(1), @(1)],
                         @[@(1), @(1), @(1), @(1), @(1)]]];
}

- (void)initColorList {
    self.colorList = [[NSMutableArray alloc] initWithArray:@[]];
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
        [(ItemOptionAddMemberCell *)cell updateWithMembersList:self.membersList andColorList:self.colorList];
        ((ItemOptionAddMemberCell *)cell).delegate = self;
    } else if (item == ItemAddCommentCell) {
        
    } else if (item == ItemCommentCell) {
        [(ItemOptionCommentCell *)cell updateWithCommenterName:nil andComment:@"commencommentcommentcommentcommentcommentcommentcommentcommentcommentt" andTime:nil andAvatar:nil];
    }
    
}

@end
