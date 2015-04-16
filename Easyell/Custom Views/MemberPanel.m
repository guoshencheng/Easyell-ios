//
//  MemberPanel.m
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "MemberPanel.h"

@implementation MemberPanel

+ (instancetype)create {
    MemberPanel *memberPanel = [[[NSBundle mainBundle] loadNibNamed:@"MemberPanel" owner:nil options:nil] lastObject];
    memberPanel.translatesAutoresizingMaskIntoConstraints = NO;
    return memberPanel;
}

- (void)awakeFromNib {
    self.selectMembers = [[NSMutableArray alloc] init];
    self.layer.cornerRadius = 8;
    self.memberTableView.delegate = self;
    self.memberTableView.dataSource = self;
    [self.memberTableView registerNib:[UINib nibWithNibName:@"MemberTableViewCell" bundle:nil] forCellReuseIdentifier:MEMBERTABLEVIEW_CELL];
}

#pragma mark - TableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIColor *selectColor  = [self.members objectAtIndex:indexPath.row];
    if (![self.selectMembers containsObject:selectColor]) {
        [self.selectMembers addObject:selectColor];
    } else {
        [self.selectMembers removeObject:selectColor];
    }
    [tableView reloadData];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 45;
}

#pragma mark - TableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.members.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MemberTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MEMBERTABLEVIEW_CELL forIndexPath:indexPath];
    [cell updateWithAvatarImageUrl:nil andNameText:[self.members objectAtIndex:indexPath.row]];
    return cell;
}

@end
