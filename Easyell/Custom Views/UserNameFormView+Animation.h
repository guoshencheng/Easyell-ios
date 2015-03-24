//
//  UserNameFormView+Animation.h
//  Vibin
//
//  Created by jackjiang on 8/21/14.
//  Copyright (c) 2014 Vibin, Ltd. All rights reserved.
//

#import "UserNameFormView.h"

@interface UserNameFormView (Animation)

- (void)animateShowInputView;
- (void)animateHideInputViewForCancel;
- (void)animateHideInputViewWithCompletion:(void (^)(void))completion;

@end
