//
//  ItemOptionViewController+UITableViewDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemOptionViewController+UITableViewDelegate.h"
#define BUTTON_CELL_HEIGHT  45
#define DETAIL_CELL_HEIGHT  45
#define TEXT_CELL_HEIGHT    60
#define TITLE_CELL_HEIGHT   60

@implementation ItemOptionViewController (UITableViewDelegate)

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [self heightOfItem:[self.itemViewDataSource itemOfIndexPath:indexPath]];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)heightOfItem:(ItemViewEnum)item {
    if ([ItemViewInfo isButtonCell:item]) {
        return BUTTON_CELL_HEIGHT;
    } else if ([ItemViewInfo isDetailCell:item]) {
        return DETAIL_CELL_HEIGHT;
    } else if ([ItemViewInfo isTextCell:item]) {
        return TEXT_CELL_HEIGHT;
    } else if ([ItemViewInfo isTitleCell:item]) {
        return TITLE_CELL_HEIGHT;
    }
    return 0;
}

@end
