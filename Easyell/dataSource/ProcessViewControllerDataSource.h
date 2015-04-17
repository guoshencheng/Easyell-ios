//
//  ProcessViewControllerDataSource.h
//  Easyell
//
//  Created by guoshencheng on 4/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "PublicTitleCell.h"
#import "PublicDescriptionCell.h"
#import "PublicColorsCell.h"

typedef enum {
    ProcessTitleCell = 0,
    ProcessDescriptCell = 1,
    ProcessColorsCell = 2
} ProcessCellEnum;

@interface ProcessViewControllerDataSource : NSObject <UITableViewDataSource>

@property (strong, nonatomic) NSString *processTitle;
@property (strong, nonatomic) NSString *processDescription;
@property (strong, nonatomic) NSArray *colors;
@property (strong, nonatomic) NSMutableArray *memberslist;
@property (strong, nonatomic) NSArray *commentList;
- (ProcessCellEnum)itemOfIndexPath:(NSIndexPath *)indexPath;

@end
