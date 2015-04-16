//
//  ColorLabelCollectViewCell.h
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#define COLOR_LABEL_COLLECTIONVIEW_CELL @"COLOR_LABEL_COLLECTIONVIEW_CELL"

@interface ColorLabelCollectViewCell : UICollectionViewCell

- (void)updateWithColor:(UIColor *)color;

@end
