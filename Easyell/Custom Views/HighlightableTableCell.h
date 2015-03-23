//
//  HighlightableTableCell.h
//  Easyell
//
//  Created by guoshencheng on 5/22/14.
//  Copyright (c) 2014 Easyell, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 * This super class is for adding highlight(when click) effect to cell,
 * basically it add a transparent black layer to cell to simulate the highlight.
 **/
@interface HighlightableTableCell : UITableViewCell

@property (strong, nonatomic) CALayer *highlightMaskLayer;

- (void)configureHighlightMaskLayerWithFrame:(CGRect)frame;
- (void)configureHighlightRoundMaskLayerWithFrame:(CGRect)frame cornerRadius:(CGFloat)cornerRadius;

@end
