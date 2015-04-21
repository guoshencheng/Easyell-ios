//
//  ProcessViewController+Configuration.m
//  Easyell
//
//  Created by guoshencheng on 4/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProcessViewController+Configuration.h"
#import "UIColor+Utility.h"

@implementation ProcessViewController (Configuration)

- (void)configureViews {
    [self configureTableView];
    [self configureSlideMotion];
    [self addColorLabelPanel];
}

- (void)configureTableView {
    self.itemTableView.delegate = self;
    self.processViewControllerDataSource = [ProcessViewControllerDataSource new];
    self.processViewControllerDataSource.processTitle = @"Titletitletitletitletitletitletitlet";
    self.processViewControllerDataSource.processDescription = @"Descriptiondescriptiondescript";
    self.processViewControllerDataSource.colors = @[[UIColor coboxGreen], [UIColor coboxYellow], [UIColor coboxOrange], [UIColor coboxRed], [UIColor coboxPurple], [UIColor coboxBlue]];
    self.processViewControllerDataSource.memberslist = [[NSMutableArray alloc] initWithArray:@[@[@(1), @(1), @(1), @(1), @(1)]]];
    self.processViewControllerDataSource.commentList = self.editable ? nil : @[@(1), @(1), @(1), @(1), @(1), @(1)];
    self.itemTableView.dataSource = self.processViewControllerDataSource;
    [self.itemTableView registerNib:[UINib nibWithNibName:@"ProcessSectionView" bundle:nil] forHeaderFooterViewReuseIdentifier:PROCESS_SECTION_VIEW];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"PublicTitleCell" bundle:nil] forCellReuseIdentifier:PUBLIC_TITLE_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"PublicDescriptionCell" bundle:nil] forCellReuseIdentifier:PUBLIC_DESCRIPTION_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"PublicColorsCell" bundle:nil] forCellReuseIdentifier:PUBLIC_COLORS_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"ProcessTaskListCell" bundle:nil] forCellReuseIdentifier:PROCESS_TASKLIST_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"ProcessCommentCell" bundle:nil] forCellReuseIdentifier:PROCESS_COMMENT_CELL];
}

- (void)configureSlideMotion {
    self.rightSlideMotion = [SlideMotion new];
    self.rightSlideMotion.direction = SlideMotionDirectionHorizontal;
    self.rightSlideMotion.delegate = self;
    self.rightSlideMotion.dataSource = self;
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

@end
