//
//  ActivityPanelDataSource.h
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ConfigureActivityPanelCellBlock) (UITableViewCell *cell, NSDictionary *activity);

@interface ActivityPanelDataSource : NSObject <UITableViewDataSource>

@property (strong, nonatomic) NSArray *activitys;
@property (strong, nonatomic) ConfigureActivityPanelCellBlock configureActivityPanelBlock;

@end
