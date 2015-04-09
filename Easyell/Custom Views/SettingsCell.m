//
//  SettingsCell.m
//  Easyell
//
//  Created by guoshencheng on 4/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SettingsCell.h"

@implementation SettingsCell

- (void)awakeFromNib {
    self.categoryImageView.layer.cornerRadius = 5;
}

- (void)updateWithText:(NSString *)text andImage:(UIImage *)image {
    self.categoryLabel.text = text;
}

@end
