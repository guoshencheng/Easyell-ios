//
//  SignInView+animation.h
//  Easyell
//
//  Created by guoshencheng on 3/9/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignInView.h"

@interface SignInView (animation)

- (void)animteToShow;
- (void)animteToHideWithCompletion:(void (^)(BOOL finished))completion;

- (void)animateToInputAccountWithCompletion:(void (^)(BOOL finished))completion;
- (void)animteBackAccountWithCompletion:(void (^)(BOOL finished))completion;

@end
