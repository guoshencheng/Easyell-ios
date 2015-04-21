//
//  PublicColorsCell.h
//  Easyell
//
//  Created by guoshencheng on 4/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorLabelCollectViewCell.h"

#define PUBLIC_COLORS_CELL @"PUBLIC_COLORS_CELL"

@interface PublicColorsCell : UITableViewCell <UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *emptyWordsLabel;
@property (weak, nonatomic) IBOutlet UICollectionView *colorCollectionView;
@property (strong, nonatomic) NSArray *colors;
- (void)updateWithColors:(NSArray *)colors;

@end
