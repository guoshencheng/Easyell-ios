//
//  ItemViewInfo.m
//  Easyell
//
//  Created by guoshencheng on 4/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemViewInfo.h"

@implementation ItemViewInfo

+ (BOOL)isButtonCell:(ItemViewEnum)item {
    return item == ItemViewAddComment || item == ItemViewDelete;
}

+ (BOOL)isTextCell:(ItemViewEnum)item {
    return item == ItemViewTitle  || item == ItemViewDescription;
}

+ (BOOL)isTitleCell:(ItemViewEnum)item {
    return item == ItemViewDetails || item == ItemViewActivity || item == ItemViewActions;
}

+ (BOOL)isDetailCell:(ItemViewEnum)item {
    return item == ItemViewType || item == ItemViewRequester || item == ItemViewOwner;
}

+ (NSString *)titleOfItem:(ItemViewEnum)item {
    NSString *title = @"";
    switch (item) {
        case ItemViewTitle:
            title = NSLocalizedString(@"Title", nil);
            break;
            
        case ItemViewDescription:
            title = NSLocalizedString(@"Description", nil);
            break;
            
        case ItemViewDetails:
            title = NSLocalizedString(@"Details", nil);
            break;
            
        case ItemViewType:
            title = NSLocalizedString(@"Type", nil);
            break;
            
        case ItemViewRequester:
            title = NSLocalizedString(@"Requester", nil);
            break;
        case ItemViewOwner:
            title = NSLocalizedString(@"Owner", nil);
            break;
        case ItemViewActivity:
            title = NSLocalizedString(@"Activity", nil);
            break;
        case ItemViewAddComment:
            title = NSLocalizedString(@"Add Comment", nil);
            break;
        case ItemViewActions:
            title = NSLocalizedString(@"Actions", nil);
            break;
        case ItemViewDelete:
            title = NSLocalizedString(@"Delete", nil);
            break;
            
        default:
            break;
    }
    
    return title;
}

@end
