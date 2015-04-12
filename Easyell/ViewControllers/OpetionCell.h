//
//  OpetionCell.h
//  Easyell
//
//  Created by guoshencheng on 4/8/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//
#import "HighlightableTableCell.h"
#define OPTION_CELL @"OPTION_CELL"
@interface OpetionCell : HighlightableTableCell <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *categoryImageView;
@property (weak, nonatomic) IBOutlet UICollectionView *memberCollectionView;

@property (strong, nonatomic) NSArray *membersOrLabels;
- (void)updateWithMembersOrLabels:(NSArray *)membersOrLabels andIsMemberCell:(BOOL)isMember;

@end
