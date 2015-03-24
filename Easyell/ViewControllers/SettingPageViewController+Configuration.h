//
//  SettingPageViewController+Configuration.h
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//

#import "SettingPageViewController.h"

@interface SettingPageViewController (Configuration)

- (void)configureView;

- (CGFloat)heightOfItem:(SettingItemEnum)item;

- (void)updateBackButtonTitle;

- (void)updateAvatarView ;

@end
