//
//  ItemViewInfo.h
//  Easyell
//
//  Created by guoshencheng on 4/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    ItemViewTitle = 0,
    ItemViewDescription = 1,
    ItemViewDetails= 2, //section
    ItemViewType = 3,
    ItemViewRequester = 4,
    ItemViewOwner = 5,
    ItemViewActivity = 6, //section
    ItemViewAddComment = 7,
    ItemViewActions = 8, //section
    ItemViewDelete = 9
} ItemViewEnum;

@interface ItemViewInfo : NSObject

+ (BOOL)isButtonCell:(ItemViewEnum)item;
+ (BOOL)isTextCell:(ItemViewEnum)item;
+ (BOOL)isTitleCell:(ItemViewEnum)item;
+ (BOOL)isDetailCell:(ItemViewEnum)item;
+ (NSString *)titleOfItem:(ItemViewEnum)item;

@end
