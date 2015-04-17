//
//  ProcessViewControllerDataSource.m
//  Easyell
//
//  Created by guoshencheng on 4/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProcessViewControllerDataSource.h"

@implementation ProcessViewControllerDataSource

#pragma mark Public Methods

- (ProcessCellEnum)itemOfIndexPath:(NSIndexPath *)indexPath {
    ProcessCellEnum item;
    if (indexPath.row == 0) {
        item = ProcessTitleCell;
    } else if (indexPath.row == 1) {
        item = ProcessDescriptCell;
    } else {
        item = ProcessColorsCell;
    }
    return item;
}


#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
    //return (3) + (self.memberslist.count + 1) + (1) + (self.commentList.count);
    //(3) is for title 、description、colors
    //(self.memberslist.count + 1) is for memberlist count  and add member button
    //(1) is for a button maybe create or maybe ohter
    //(self.commentList.count) is for comment count if has
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ProcessCellEnum item = [self itemOfIndexPath:indexPath];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[self reuseIdOfProcessCellEnum:item]];
    [self updateCell:cell];
    return cell;
}

#pragma mark Private Methods

- (void)updateCell:(UITableViewCell *)cell {
    if ([cell isKindOfClass:[PublicTitleCell class]]) {
        [(PublicTitleCell *)cell updateTitleLabel:self.processTitle];
    } else if ([cell isKindOfClass:[PublicDescriptionCell class]]) {
        [(PublicDescriptionCell *)cell updateDescriptionLabel:self.processDescription];
    } else if ([cell isKindOfClass:[PublicColorsCell class]]) {
        [(PublicColorsCell *)cell updateWithColors:self.colors];
    }
}

- (NSString *)reuseIdOfProcessCellEnum:(ProcessCellEnum)item {
    NSString *reuseId = @"";
    switch (item) {
        case ProcessTitleCell:
            reuseId = PUBLIC_TITLE_CELL;
            break;
        case ProcessDescriptCell:
            reuseId = PUBLIC_DESCRIPTION_CELL;
            break;
        case ProcessColorsCell:
            reuseId = PUBLIC_COLORS_CELL;
        default:
            break;
    }
    return reuseId;
}

@end
