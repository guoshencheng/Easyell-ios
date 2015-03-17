//
//  HomeView+Animation.h
//  Easyell
//
//  Created by guoshencheng on 3/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeView.h"

@interface HomeView (Animation)

- (void)animateSlideMoveTableViewToRight;
- (void)animateSlideMoveTableViewToLeft;

- (void)sureLeftViewWithOffset:(CGFloat)offset;

@end
