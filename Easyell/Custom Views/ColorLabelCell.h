//
//  ColorLabelCell.h
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#define COLORLABEL_CELL @"COLORLABEL_CELL"

@interface ColorLabelCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *colorView;
@property (weak, nonatomic) IBOutlet UIView *maskView;

- (void)updateWithColor:(UIColor *)color andSelected:(BOOL)selected;

@end
