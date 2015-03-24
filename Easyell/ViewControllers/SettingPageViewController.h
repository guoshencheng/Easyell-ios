//
//  SettingPageViewController.h
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SettingItemInfo.h"
#import "SettingsDataSource.h"
#import "UserNameFormView.h"
#import "HighlightBackgroundButton.h"

@protocol SettingPageViewControllerDelegate;

@interface SettingPageViewController : UIViewController <UITableViewDelegate, UIAlertViewDelegate, UserNameFormViewDelegate>

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *signOutButtonViewBottomConstrain;
@property (weak, nonatomic) IBOutlet HighlightBackgroundButton *signOutButton;
@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIView *backButtonBackgroundView;
@property (weak, nonatomic) IBOutlet UITableView *settingsTableView;
@property (weak, nonatomic) IBOutlet UIView *avatarView;
@property (weak, nonatomic) IBOutlet UIImageView *smallAvatarImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mediumAvatarImageView;
@property (weak, nonatomic) IBOutlet UIView *maskView;
@property (weak, nonatomic) IBOutlet UIView *maskImageViewBackgroundView;
@property (weak, nonatomic) IBOutlet UIImageView *maskImageView;
@property (weak, nonatomic) IBOutlet UIImageView *coverImageView;
@property (weak, nonatomic) IBOutlet UIView *coverImageMaskView;
@property (strong, nonatomic) SettingsDataSource *settingsDataSource;
@property (strong, nonatomic) UserNameFormView *userNameFormView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *avatarViewTopConstrain;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *avatarViewWidthConstrain;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *avatarViewHeighConstrain;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *maskImageViewTopConstraint;

@property (nonatomic, weak) id<SettingPageViewControllerDelegate> delegate;

+ (instancetype)create;
- (void)screenshotInfoCell;

@end

@protocol SettingPageViewControllerDelegate <NSObject>

@optional

- (void)settingPageViewController:(SettingPageViewController *)settingPageViewController didUpdateDisplayName:(NSString *)displayName;
- (void)settingPageViewController:(SettingPageViewController *)settingPageViewController didUpdateAvatar:(UIImage *)avatarImage;

@end
