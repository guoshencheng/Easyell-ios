//
//  ColorLabelsCell.h
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HighlightableTableCell.h"
#import "ColorLabelCollectViewCell.h"

#define COLOR_LABELS_CELL @"COLOR_LABELS_CELL"

@interface ColorLabelsCell : UITableViewCell <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *colorCollectionView;
@property (weak, nonatomic) IBOutlet UIImageView *categoryImageView;
@property (strong, nonatomic) NSArray *colors;
- (void)updateWithColors:(NSArray *)colors;

@end
