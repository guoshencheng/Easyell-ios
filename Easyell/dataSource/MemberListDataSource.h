//
//  MemberListDataSource.h
//  Easyell
//
//  Created by guoshencheng on 4/8/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ConfigureMemberListCellBlock) (UICollectionViewCell *cell, NSDictionary *member);
@interface MemberListDataSource : NSObject <UICollectionViewDataSource>

@property (strong, nonatomic) NSArray *members;
@property (strong, nonatomic) ConfigureMemberListCellBlock configureMemberListCellBlock;

@end
