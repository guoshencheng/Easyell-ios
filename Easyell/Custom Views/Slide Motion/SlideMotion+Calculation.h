//
//  SlideMotion+Calculation.h
//  Easyell
//
//  Created by guoshencheng on 4/7/14.
//  Copyright (c) 2014 Easyell, Ltd. All rights reserved.
//

#import "SlideMotion.h"

@interface SlideMotion (Calculation)

- (CGPoint)locationOfGesture:(UIPanGestureRecognizer *)gesture;

- (CGFloat)offsetOfGesture:(UIPanGestureRecognizer *)gesture fromLocation:(CGPoint)startLocation;

- (BOOL)shouldIgnoreGesture:(UIPanGestureRecognizer *)gesture;

@end
