//
//  TaskViewController+Configuration.m
//  Easyell
//
//  Created by guoshencheng on 4/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TaskViewController+Configuration.h"

@implementation TaskViewController (Configuration)

- (void)configureViews {
    [self configureTopBar];
    [self configureTableView];
    [self configureSlideMotion];
    [self addMemberPanel];
}

- (void)configureTopBar {
    self.rightLabel.text = self.editable ? @"Save" : @"Finish";
    self.leftLabel.text = ([self.title isEqual:@""]) ? @"New Task" : self.title;
}

- (void)configureTableView {
    self.itemTableView.delegate = self;
    self.taskViewControllerDataSource = [TaskViewControllerDataSource new];
    __weak typeof(self) weakSelf = self;
    self.taskViewControllerDataSource.configureMembersCellDelegateBlock = ^(PublicMemberCell *cell) {
        cell.delegate = weakSelf;
        [cell updateWithMemberArray:weakSelf.taskViewControllerDataSource.members andEditable:weakSelf.editable];
    };
    self.taskViewControllerDataSource.taskTitle = @"TitleTitleTitleTitleTitle";
    self.taskViewControllerDataSource.taskDescription = @"DescriptionDescriptionDescriptionDescription";
    self.taskViewControllerDataSource.members = @[@"Century Guo"];
  //@[@"Centuty Guo", @"Sherlock Yao", @"Peter Zhao", @"Younger Zhou", @"Centuty Guo", @"Sherlock Yao", @"Peter Zhao", @"Younger Zhou"];
    self.taskViewControllerDataSource.tasks = self.editable ? @[] : @[@(1), @(1), @(1)];
    self.itemTableView.dataSource = self.taskViewControllerDataSource;
    [self.itemTableView registerNib:[UINib nibWithNibName:@"ProcessAndTaskSectionView" bundle:nil] forHeaderFooterViewReuseIdentifier:PROCESS_SECTION_VIEW];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"PublicTitleCell" bundle:nil] forCellReuseIdentifier:PUBLIC_TITLE_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"PublicDescriptionCell" bundle:nil] forCellReuseIdentifier:PUBLIC_DESCRIPTION_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"PublicMemberCell" bundle:nil] forCellReuseIdentifier:PUBLIC_MEMBER_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"TaskTaskListCell" bundle:nil] forCellReuseIdentifier:TASK_TASKLIST_CELL];
}

- (void)configureSlideMotion {
    self.rightSlideMotion = [SlideMotion new];
    self.rightSlideMotion.direction = SlideMotionDirectionHorizontal;
    self.rightSlideMotion.delegate = self;
    self.rightSlideMotion.dataSource = self;
}

- (void)addMemberPanel {
    self.memberPanel = [MemberPanel create];
    [self.view addSubview:self.memberPanel];
    [self.memberPanel setTopSpace:45];
    [self.memberPanel setRightSpace:MEMBER_PANEL_WIDTH];
    [self.memberPanel setBottomSpace: -45];
    [self.memberPanel setWidthConstant:MEMBER_PANEL_WIDTH];
    [self.rightSlideMotion attachToView:self.memberPanel];
    [self.view layoutIfNeeded];
    self.memberPanel.delegate = self;
    self.memberPanel.members = @[@"Century Guo", @"Sherlock Yao", @"Peter Zhao", @"Younger Zhou", @"Zhou Chunjie", @"Ding LingLing"];
    self.memberPanel.selectMembers = [[NSMutableArray alloc] initWithArray:@[@"Century Guo"]];
}

@end
