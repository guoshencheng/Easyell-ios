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
    if (indexPath.section == 0) {
        item = ProcessTitleCell;
    } else if (indexPath.section == 1) {
        item = ProcessDescriptCell;
    } else if(indexPath.section == 2) {
        item = ProcessColorsCell;
    } else if(indexPath.section == 3) {
        item = ProcessTaskCell;
    } else {
        item = ProcessCommentsCell;
    }
    return item;
}

- (NSString *)getTitleTextOfSection:(NSInteger)section {
    NSString *title = @"";
    switch (section) {
        case 0:
            title = @"Title";
            break;
        case 1:
            title = @"Decription";
            break;
        case 2:
            title = @"Colors";
            break;
        case 3:
            title = @"Tasks";
            break;
        case 4:
            title = @"Comments";
            break;
        default:
            break;
    }
    return title;
}

#pragma mark UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section < 3) {
        return 1;
    } else if (section == 3) {
        return self.memberslist.count + 1;
    } else {
        return self.commentList.count;
    }
    //return (3) + (self.memberslist.count + 1) + (1) + (self.commentList.count);
    //(3) is for title 、description、colors
    //(self.memberslist.count + 1) is for memberlist count  and add member button
    //(1) is for a button maybe create or maybe ohter
    //(self.commentList.count) is for comment count if has
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ProcessCellEnum item = [self itemOfIndexPath:indexPath];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[self reuseIdOfProcessCellEnum:item]];
    [self updateCell:cell andIndexPath:indexPath];
    return cell;
}

#pragma mark Private Methods

- (void)updateCell:(UITableViewCell *)cell andIndexPath:(NSIndexPath *)indexPath {
    if ([cell isKindOfClass:[PublicTitleCell class]]) {
        [(PublicTitleCell *)cell updateTitleLabel:self.processTitle];
    } else if ([cell isKindOfClass:[PublicDescriptionCell class]]) {
        [(PublicDescriptionCell *)cell updateDescriptionLabel:self.processDescription];
    } else if ([cell isKindOfClass:[PublicColorsCell class]]) {
        [(PublicColorsCell *)cell updateWithColors:self.colors];
    } else if ([cell isKindOfClass:[ProcessTaskListCell class]]) {
        if (indexPath.row  < self.memberslist.count) {
            [(ProcessTaskListCell *)cell updateWithMembers:[self.memberslist objectAtIndex:indexPath.row] andTaskTtile:@"TitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitle"];
        } else {
            [(ProcessTaskListCell *)cell updateToAddTaskButton];
        }
    } else if ([cell isKindOfClass:[ProcessCommentCell class]]) {
        [(ProcessCommentCell *)cell updateWithCommenterName:@"Century Guo" andComment:@"CommentCommentCommentCommentCommentCommentComment" andTime:@"just Now" andAvatar:nil];
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
            break;
        case ProcessTaskCell:
            reuseId = PROCESS_TASKLIST_CELL;
            break;
        case ProcessCommentsCell:
            reuseId = PROCESS_COMMENT_CELL;
            break;
        default:
            break;
    }
    return reuseId;
}

@end
