//
//  SignInView+animation.h
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInView.h"

@interface SignInView (animation)

- (void)animateToShow;
- (void)animateToHideWithCompletion:(void (^)(BOOL finished))completion;

- (void)animateToInputAccountWithCompletion:(void (^)(BOOL finished))completion;
- (void)animateBackAccountWithCompletion:(void (^)(BOOL finished))completion;

- (void)animateBackPasswordtWithCompletion:(void (^)(BOOL finished))completion;
- (void)animateToInputPasswordWithCompletion:(void (^)(BOOL finished))completion;

@end
