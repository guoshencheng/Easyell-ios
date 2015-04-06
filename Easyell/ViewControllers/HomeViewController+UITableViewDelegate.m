//
//  HomeViewController+UITableViewDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController+UITableViewDelegate.h"
#import "ProjectViewController.h"
#import "GroupSectionView.h"

@implementation HomeViewController (UITableViewDelegate)

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    GroupSectionView *view = [[[NSBundle mainBundle] loadNibNamed:@"GroupSectionView" owner:nil options:nil] lastObject];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 60;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 45;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    ProjectViewController *projectViewController = [ProjectViewController create];
    [self.navigationController pushViewController:projectViewController animated:YES];
}

@end
