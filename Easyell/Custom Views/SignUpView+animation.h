//
//  SignUpView+animation.h
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "SignUpView.h"

@interface SignUpView (animation)

- (void)animateToShow;
- (void)animateToHideWithCompletion:(void (^)(BOOL finished))completion;

- (void)animateToInputFromAccountWithCompletion:(void (^)(BOOL finished))completion;
- (void)animateToInputFromPasswordWithCompletion:(void (^)(BOOL finished))completion;
- (void)animateToInputFromUsernameWithCompletion:(void (^)(BOOL finished))completion;

- (void)animateBackFromInputWithView:(UIView *)view constraint:(NSLayoutConstraint *)constraint completion:(void (^)(BOOL finished))completion;

@end
