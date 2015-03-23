//
//  SettingPageViewController+Configuration.h
//  Easyell
//
//  Created by guoshencheng on 4/2/14.
//  Copyright (c) 2014 Easyell, Ltd. All rights reserved.
//

#import "SettingPageViewController.h"

@interface SettingPageViewController (Configuration)

- (void)configureView;

- (CGFloat)heightOfItem:(SettingItemEnum)item;

- (void)updateBackButtonTitle;

- (void)updateAvatarView ;

@end
