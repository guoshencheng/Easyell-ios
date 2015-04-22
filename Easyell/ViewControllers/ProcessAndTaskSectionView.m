//
//  ProcessAndTaskSectionView.m
//  Easyell
//
//  Created by guoshencheng on 4/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProcessAndTaskSectionView.h"

@implementation ProcessAndTaskSectionView

- (void)awakeFromNib {
    self.categoryImageView.layer.cornerRadius = 5;
}

- (void)updateWithTitle:(NSString *)text {
    self.processSectionTitle.text = text;
}

@end
