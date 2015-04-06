//
//  ActivityPanel+UITableViewDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ActivityPanel+UITableViewDelegate.h"
#import "ActivityPanelSectionView.h"

@implementation ActivityPanel (UITableViewDelegate)

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    ActivityPanelSectionView *view = [[[NSBundle mainBundle] loadNibNamed:@"ActivityPanelSectionView" owner:nil options:nil] lastObject];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 30;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 30;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
