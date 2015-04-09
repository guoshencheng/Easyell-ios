//
//  SettingsCell.h
//  Easyell
//
//  Created by guoshencheng on 4/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HighlightableTableCell.h"
#define SETTINGS_CELL @"SETTINGS_CELL"

@interface SettingsCell : HighlightableTableCell
@property (weak, nonatomic) IBOutlet UIImageView *categoryImageView;
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;

- (void)updateWithText:(NSString *)text andImage:(UIImage *)image;

@end
