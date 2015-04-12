//
//  HomeViewController+configuration.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController+configuration.h"

@implementation HomeViewController (configuration)

- (void)configureViews {
    [self configureSlideMotion];
    [self configureGroupTableView];
    [self addSettingsPanel];
}

- (void)configureSlideMotion {
    self.horizontalSlideMotion = [SlideMotion new];
    self.horizontalSlideMotion.direction = SlideMotionDirectionHorizontal;
    self.horizontalSlideMotion.delegate = self;
    self.horizontalSlideMotion.dataSource = self;
}

- (void)configureGroupTableView {
    self.groupTableView.delegate = self;
    self.groupListDataSource = [GroupListDataSource new];
    self.groupListDataSource.groups = [self getGroupList];
    self.groupListDataSource.configureGroupListCellBlock = ^(UITableViewCell *cell, NSArray *projectList) {
        
    };
    self.groupTableView.dataSource = self.groupListDataSource;
    [self.groupTableView registerNib:[UINib nibWithNibName:@"GroupListCell" bundle:nil] forCellReuseIdentifier:GROUP_LIST_CELL];
    [self.horizontalSlideMotion attachToView:self.groupTableView];
    [self.view layoutIfNeeded];
}

- (void)addSettingsPanel {
    self.settingsPanel = [SettingsPanel create];
    [self.view insertSubview:self.settingsPanel atIndex:0];
    [self.settingsPanel setLeftSpace: - LEFT_VIEW_WIDTH / 2];
    [self.settingsPanel setTopSpace:0];
    [self.settingsPanel setBottomSpace:0];
    [self.settingsPanel setWidthConstant:LEFT_VIEW_WIDTH];
    [self.view layoutIfNeeded];
}

- (NSArray *)getGroupList {
    return @[
             @[@(1),@(1),@(1),@(1),@(1),@(1)],
             @[@(1),@(1),@(1),@(1),@(1)],
             @[@(1),@(1)],
             @[@(1),@(1),@(1),@(1),@(1),@(1),@(1)]
             ];
}

@end
