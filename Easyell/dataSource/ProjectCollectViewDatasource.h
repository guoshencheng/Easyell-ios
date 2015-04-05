//
//  ProjectCollectViewDatasource.h
//  Easyell
//
//  Created by guoshencheng on 4/3/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ConfigureCollectionCellBlock) (UICollectionViewCell *cell, NSArray *items);

@interface ProjectCollectViewDatasource : NSObject <UICollectionViewDataSource>

@property (strong, nonatomic) NSMutableArray *itemsKind;
@property (strong, nonatomic) NSString *reuseId;
@property (strong, nonatomic) ConfigureCollectionCellBlock configureCollectionCellBlock;

@end
