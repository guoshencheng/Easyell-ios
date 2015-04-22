//
//  TaskTaskListCell.m
//  Easyell
//
//  Created by guoshencheng on 4/22/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TaskTaskListCell.h"

@implementation TaskTaskListCell

- (void)awakeFromNib {
    self.cellBackgourndView.layer.cornerRadius = 5;
    [self addShadow];
}

- (void)addShadow {
    [self.cellBackgourndView.layer setShadowOffset:CGSizeMake(2, 2)];
    [self.cellBackgourndView.layer setShadowRadius:2];
    [self.cellBackgourndView.layer setShadowOpacity:0.3];
    [self.cellBackgourndView.layer setShadowColor:[[UIColor blackColor] CGColor]];
}

- (void)updateWithTitle:(NSString *)title andDescription:(NSString *)description {
    self.taskTitle.text = ([title isEqual:@""]) ? @"New Task" : title;
    self.taskDescription.text = ([description isEqual:@""]) ? @"No description" : description;
    [self layoutIfNeeded];
    CGRect frame = self.frame;
    frame.size.height = [self caculateCellHeight];
    self.frame = frame;
}

- (CGFloat)caculateCellHeight {
    return 15 + self.taskTitle.frame.size.height + 5 + self.taskDescription.frame.size.height + 15;
}

@end
