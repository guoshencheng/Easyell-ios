//
//  ProjectViewController+animation.h
//  Easyell
//
//  Created by guoshencheng on 4/3/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProjectViewController.h"

@interface ProjectViewController (animation)

- (void)animateSlideTabView:(CGFloat)offset withCompletion:(void (^)(BOOL finished))completion;
- (void)slideToHideActivityPanelWithCompletion:(void (^)(BOOL finished))completion;
- (void)slideToShowActivityPanelWithCompletion:(void (^)(BOOL finished))completion;

@end
