//
//  ActivityPanel+UITableViewDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ActivityPanel+UITableViewDelegate.h"
#import "ActivityPanelSectionView.h"
#import "MemberCell.h"

@implementation ActivityPanel (UITableViewDelegate)

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    ActivityPanelSectionView *view = [[[NSBundle mainBundle] loadNibNamed:@"ActivityPanelSectionView" owner:nil options:nil] lastObject];
    [view updateTitleLabel:(section == 0 ? @"Members" : @"Activity")];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 30;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return [MemberCell caculateHeightOfHeightWithMembersCount:self.members.count];
    } else {
        UITableViewCell *cell = [self.activityPanelDatasource tableView:tableView cellForRowAtIndexPath:indexPath];
        return cell.frame.size.height;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
