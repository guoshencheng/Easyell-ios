//
//  SlideMotion+Calculation.h
//  Vibin
//
//  Created by Sherlock on 4/7/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "SlideMotion.h"

@interface SlideMotion (Calculation)

- (CGPoint)locationOfGesture:(UIPanGestureRecognizer *)gesture;

- (CGFloat)offsetOfGesture:(UIPanGestureRecognizer *)gesture fromLocation:(CGPoint)startLocation;

- (BOOL)shouldIgnoreGesture:(UIPanGestureRecognizer *)gesture;

@end
