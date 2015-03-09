//
//  SpringAnimationMaker.m
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SpringAnimationMaker.h"
#import "JNWSpringAnimation.h"

@implementation SpringAnimationMaker

#pragma mark Public Methods

+ (void)steppedLeftSpringSlideOut:(NSArray *)views {
    [self steppedLeftSpringSlideOut:views finishDelegate:nil];
}

+ (void)steppedWithDefaultFinisherLeftSpringSlideOut:(NSArray *)views {
    [self steppedLeftSpringSlideOut:views finishDelegate:[SpringAnimationFinisher finisherForViews:views]];
}

+ (void)steppedLeftSpringSlideOut:(NSArray *)views finishDelegate:(id)delegate {
    [self steppedLeftSpringSlideOut:views xOffset:0 finishDelegate:delegate];
}

+ (void)steppedWithDefaultFinisherLeftSpringSlideOut:(NSArray *)views xOffset:(CGFloat)xOffset {
    [self steppedLeftSpringSlideOut:views xOffset:xOffset finishDelegate:[SpringAnimationFinisher finisherForViews:views offset:xOffset]];
}

+ (void)steppedLeftSpringSlideOut:(NSArray *)views xOffset:(CGFloat)xOffset finishDelegate:(id)delegate {
    for (int i = 0; i < [views count]; i++) {
        UIView *view = [views objectAtIndex:i];
        CGRect frame = view.frame;
        frame.origin.x = -view.frame.size.width;
        view.frame = frame;
        JNWSpringAnimation *animation = [self animationForMoveView:view atIndex:i offset:xOffset];
        if ((i + 1) == [views count]) {
            animation.delegate = delegate;
        }
        [view.layer addAnimation:animation forKey:@"spring"];
    }
}

+ (void)steppedRightSpringSlideOut:(NSArray *)views {
    [self steppedRightSpringSlideOut:views finishDelegate:nil];
}

+ (void)steppedWithDefaultFinisherRightSpringSlideOut:(NSArray *)views {
    [self steppedRightSpringSlideOut:views finishDelegate:[SpringAnimationFinisher finisherForViews:views]];
}

+ (void)steppedRightSpringSlideOut:(NSArray *)views finishDelegate:(id)delegate {
    [self steppedRightSpringSlideOut:views xOffset:0 finishDelegate:delegate];
}

+ (void)steppedWithDefaultFinisherRightSpringSlideOut:(NSArray *)views xOffset:(CGFloat)xOffset {
    [self steppedRightSpringSlideOut:views xOffset:0 finishDelegate:[SpringAnimationFinisher finisherForViews:views offset:0]];
}

+ (void)steppedRightSpringSlideOut:(NSArray *)views xOffset:(CGFloat)xOffset finishDelegate:(id)delegate {
    for (int i = 0; i < [views count]; i++) {
        UIView *view = [views objectAtIndex:i];
        CGRect frame = view.frame;
        frame.origin.x = view.frame.size.width;
        view.frame = frame;
        JNWSpringAnimation *animation = [self animationForMoveView:view atIndex:i offset:0];
        if ((i + 1) == [views count]) {
            animation.delegate = delegate;
        }
        [view.layer addAnimation:animation forKey:@"spring"];
    }}

+ (void)removeAnimationFromViews:(NSArray *)views {
    for (UIView *view in views) {
        [view.layer removeAnimationForKey:@"spring"];
    }
}

#pragma mark Private Methods

+ (JNWSpringAnimation *)animationForMoveView:(UIView *)view atIndex:(NSInteger)index offset:(CGFloat)offset {
    JNWSpringAnimation *animation = [JNWSpringAnimation animationWithKeyPath:@"position.x"];
    animation.fromValue = @(view.center.x);
    animation.toValue = @((view.frame.size.width / 2) - offset);
    animation.mass = 3;
    animation.damping = 46;
    animation.stiffness = 250;
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.beginTime = CACurrentMediaTime() + 0.06 * (index + 1);
    return animation;
    
}

@end


@interface SpringAnimationFinisher()

@property (strong, nonatomic) NSArray *views;
@property (assign, nonatomic) CGFloat offset;
@property (strong, nonatomic) FinisherBlock block;

@end

@implementation SpringAnimationFinisher

+ (instancetype)finisherForViews:(NSArray *)views {
    return [self finisherForViews:views offset:0];
}

+ (instancetype)finisherForViews:(NSArray *)views block:(FinisherBlock)block {
    return [self finisherForViews:views offset:0 block:block];
}

+ (instancetype)finisherForViews:(NSArray *)views offset:(CGFloat)offset {
    return [self finisherForViews:views offset:offset block:nil];
}

+ (instancetype)finisherForViews:(NSArray *)views offset:(CGFloat)offset block:(FinisherBlock)block {
    SpringAnimationFinisher *finisher = [SpringAnimationFinisher new];
    finisher.views = views;
    finisher.offset = offset;
    finisher.block = block;
    return finisher;
}

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag {
    [SpringAnimationMaker removeAnimationFromViews:self.views];
    for (UIView *view in self.views) {
        CGRect frame = view.frame;
        frame.origin.x = self.offset;
        view.frame = frame;
    }
    if (self.block) {
        self.block();
    }
}

@end
