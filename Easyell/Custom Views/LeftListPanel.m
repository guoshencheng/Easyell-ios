//
//  LeftListPanel.m
//  Easyell
//
//  Created by guoshencheng on 3/23/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "LeftListPanel.h"
#import "LeftListPanelCell.h"

#define LEFTLISTPANELCELL @"LeftListPanelCell"

@implementation LeftListPanel

+ (instancetype)create {
    LeftListPanel *view = [[[NSBundle mainBundle] loadNibNamed:@"LeftListPanel" owner:nil options:nil] lastObject];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    return view;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self configureTableview];
}

- (void)configureTableview {
    [self.tableView registerNib:[UINib nibWithNibName:@"LeftListPanelCell" bundle:nil] forCellReuseIdentifier:LEFTLISTPANELCELL];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self layoutIfNeeded];
}

#pragma mark - tableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - tableViewDatasource 

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LeftListPanelCell *cell = [self.tableView dequeueReusableCellWithIdentifier:LEFTLISTPANELCELL forIndexPath:indexPath];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

@end
