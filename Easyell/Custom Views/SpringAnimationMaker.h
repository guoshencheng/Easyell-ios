//
//  SpringAnimationMaker.h
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpringAnimationMaker : NSObject

/**
 * The stepped animation looks like:
 *
 *    A ->
 *   B ->
 *  C ->
 * D ->
 *
 *
 * The offset means how much width you want to hide in left when finish, example:
 *
 * -|--- (hide 1 pixel, show 3 pixel)
 **/
+ (void)steppedLeftSpringSlideOut:(NSArray *)views;
+ (void)steppedWithDefaultFinisherLeftSpringSlideOut:(NSArray *)views;
+ (void)steppedLeftSpringSlideOut:(NSArray *)views finishDelegate:(id)delegate;
+ (void)steppedWithDefaultFinisherLeftSpringSlideOut:(NSArray *)views xOffset:(CGFloat)xOffset;
+ (void)steppedLeftSpringSlideOut:(NSArray *)views xOffset:(CGFloat)xOffset finishDelegate:(id)delegate;

/**
 * The stepped animation looks like:
 *
 * <- A
 *  <- B
 *   <- C
 *    <- D
 *
 * The offset means how much width you want to hide in right when finish, example:
 *
 * ---|- (hide 1 pixel, show 3 pixel)
 **/
+ (void)steppedRightSpringSlideOut:(NSArray *)views;
+ (void)steppedWithDefaultFinisherRightSpringSlideOut:(NSArray *)views;
+ (void)steppedRightSpringSlideOut:(NSArray *)views finishDelegate:(id)delegate;
+ (void)steppedWithDefaultFinisherRightSpringSlideOut:(NSArray *)views xOffset:(CGFloat)xOffset;
+ (void)steppedRightSpringSlideOut:(NSArray *)views xOffset:(CGFloat)xOffset finishDelegate:(id)delegate;

+ (void)removeAnimationFromViews:(NSArray *)views;

@end

typedef void (^FinisherBlock) (void);

@interface SpringAnimationFinisher : NSObject

+ (instancetype)finisherForViews:(NSArray *)views;
+ (instancetype)finisherForViews:(NSArray *)views block:(FinisherBlock)block;
+ (instancetype)finisherForViews:(NSArray *)views offset:(CGFloat)offset;

@end

