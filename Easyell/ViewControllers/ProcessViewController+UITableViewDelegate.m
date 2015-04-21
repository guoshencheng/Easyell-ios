//
//  ProcessViewController+UITableViewDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProcessViewController+UITableViewDelegate.h"
#import "ProcessViewController+Animation.h"

@implementation ProcessViewController (UITableViewDelegate)

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.processViewControllerDataSource tableView:tableView cellForRowAtIndexPath:indexPath];
    return cell.frame.size.height;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.section == 0) {
        [self didClickTitleCell];
    } else if (indexPath.section == 1) {
        [self didClickDescriptionCell];
    } else if (indexPath.section == 2) {
        [self didClickColorsCell];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 45;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section  {
    ProcessSectionView *view = [tableView dequeueReusableHeaderFooterViewWithIdentifier:PROCESS_SECTION_VIEW];
    [view updateWithTitle:[self.processViewControllerDataSource getTitleTextOfSection:section]];
    return view;
}

- (void)didClickColorsCell {
    self.colorLabelListPanel.selectColors = [[NSMutableArray alloc] initWithArray:self.processViewControllerDataSource.colors];
    [self.colorLabelListPanel reloadData];
    [self slideColorPanelToShow];
}

- (void)didClickTitleCell {
    ModifyTextViewController *modifyTextViewController = [ModifyTextViewController create];
    modifyTextViewController.text = self.processViewControllerDataSource.processTitle;
    modifyTextViewController.type = ModifyTitle;
    modifyTextViewController.delegate = self;
    [self.navigationController pushViewController:modifyTextViewController animated:YES];
}

- (void)didClickDescriptionCell {
    ModifyTextViewController *modifyTextViewController = [ModifyTextViewController create];
    modifyTextViewController.text = self.processViewControllerDataSource.processDescription;
    modifyTextViewController.type = ModifyDescription;
    modifyTextViewController.delegate = self;
    [self.navigationController pushViewController:modifyTextViewController animated:YES];
}

@end
