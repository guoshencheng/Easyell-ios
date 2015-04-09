//
//  SettingsPanel+UITableViewDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SettingsPanel+UITableViewDelegate.h"

@implementation SettingsPanel (UITableViewDelegate)

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return 180;
    } else {
        return 60;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if (section != 0) {
        UIView *view  = [[UIView alloc] init];
        view.backgroundColor = [UIColor clearColor];
        AutoLayoutView *line = [[AutoLayoutView alloc] init];
        line.translatesAutoresizingMaskIntoConstraints = NO;
        line.backgroundColor = [UIColor whiteColor];
        [view addSubview:line];
        [line setTopSpace:30];
        [line setLeftSpace:20];
        [line setRightSpace: -20];
        [line setHeightConstant:0.5];
        [view layoutIfNeeded];
        return view;
    } else {
        return nil;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 0;
    } else {
        return 60;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
