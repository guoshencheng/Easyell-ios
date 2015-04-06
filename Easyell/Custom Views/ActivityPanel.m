//
//  ActivityPanel.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ActivityPanel.h"
#import "ActivityPanel+configuration.h"

@implementation ActivityPanel

+ (instancetype)create {
    ActivityPanel *view = [[[NSBundle mainBundle] loadNibNamed:@"ActivityPanel" owner:nil options:nil] lastObject];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    return view;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self configureViews];
}

@end
