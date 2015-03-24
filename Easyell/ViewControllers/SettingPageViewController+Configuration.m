//
//  SettingPageViewController+Configuration.m
//  Easyell
//
//  Created by Guoshencheng on 4/2/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//

#import "SettingPageViewController+Configuration.h"
#import "SettingAvatarCell.h"
#import "SettingSectionCell.h"
#import "SettingInfoCell.h"
#import "SettingOptionCell.h"
#import "UIColor+Utility.h"

#define ORIGINSETOUTBUTTONPOSTION (-69)
#define AVATAR_ITEM_HEIGHT 204
#define SECTION_ITEM_HEIGHT 47
#define INFO_ITEM_HEIGHT 95
#define OPTION_ITEM_HEIGHT 95
#define BUTTON_ITEM_HEIGHT 139

@implementation SettingPageViewController (Configuration)

#pragma mark - Public Methods

- (void)configureView {
  [self configureText];
  [self configureTalbeView];
  [self configureAvatarView];
  [self configureSignOutButtonView];
  [self addGradientMaskToBackButton];
}

- (CGFloat)heightOfItem:(SettingItemEnum)item {
  if ([SettingItemInfo isAvatarItem:item]) {
    return AVATAR_ITEM_HEIGHT;
  } else if ([SettingItemInfo isSectionItem:item]) {
    return SECTION_ITEM_HEIGHT;
  } else if ([SettingItemInfo isInfoItem:item]) {
    return INFO_ITEM_HEIGHT;
  } else if ([SettingItemInfo isOptionItem:item]) {
    return OPTION_ITEM_HEIGHT;
  } else if ([SettingItemInfo isButtonItem:item]) {
    return BUTTON_ITEM_HEIGHT;
  }
  return 0;
}

- (void)updateBackButtonTitle {
 // NSString *backButtonTitle = [NSString stringWithFormat:@" %@", [Profile current].displayName];
  //[self.backButton setTitle:backButtonTitle forState:UIControlStateNormal];
}

-(void)updateAvatarView {
  [self configureAvatarView];
}

#pragma mark Private Method

- (void)configureText {
//  NSString *backButtonTitle = [NSString stringWithFormat:@" %@", [Profile current].displayName];
//  [self.backButton setTitle:backButtonTitle forState:UIControlStateNormal];
}

- (void)configureTalbeView {
  self.settingsTableView.delegate = self;
  self.settingsTableView.contentInset = UIEdgeInsetsMake(60, 0, 0, 0);
  // Add data source
  self.settingsDataSource = [SettingsDataSource new];
  self.settingsDataSource.items = [self createSettingItemArray];
  __weak typeof(self) weakSelf = self;
  self.settingsDataSource.configureTableCellBlock = ^(UITableViewCell *cell, SettingItemEnum item) {
    [weakSelf updateCell:cell ofItem:item];
  };
  self.settingsTableView.dataSource = self.settingsDataSource;
  // Register cells
  [self.settingsTableView registerNib:[UINib nibWithNibName:@"SettingAvatarCell" bundle:nil] forCellReuseIdentifier:AVATAR_CELL_REUSE_ID];
  [self.settingsTableView registerNib:[UINib nibWithNibName:@"SettingSectionCell" bundle:nil] forCellReuseIdentifier:SECTION_CELL_REUSE_ID];
  [self.settingsTableView registerNib:[UINib nibWithNibName:@"SettingInfoCell" bundle:nil] forCellReuseIdentifier:INFO_CELL_REUSE_ID];
  [self.settingsTableView registerNib:[UINib nibWithNibName:@"SettingOptionCell" bundle:nil] forCellReuseIdentifier:OPTION_CELL_REUSE_ID];
  [self.settingsTableView registerNib:[UINib nibWithNibName:@"SettingButtonCell" bundle:nil] forCellReuseIdentifier:BUTTON_CELL_REUSE_ID];
}

- (void)configureAvatarView {
    self.mediumAvatarImageView.backgroundColor = [UIColor whiteColor];
    self.smallAvatarImageView.backgroundColor = [UIColor whiteColor];
}

- (void)configureSignOutButtonView {
  self.signOutButtonViewBottomConstrain.constant = ORIGINSETOUTBUTTONPOSTION;
  self.signOutButton.normalBackgroundColor = [UIColor redLabelColor];
  self.signOutButton.highlightBackgroundColor = [UIColor darkRedLabelColor];
  [self.signOutButton setTitle:NSLocalizedString(@"signout", nil) forState:UIControlStateNormal];
}

- (void)updateCell:(UITableViewCell *)cell ofItem:(SettingItemEnum)item {
  NSString *title = [SettingItemInfo titleOfItem:item];
  if ([SettingItemInfo isAvatarItem:item]) {
    [(SettingAvatarCell *)cell reloadData];
  } else if ([SettingItemInfo isSectionItem:item]) {
    [(SettingSectionCell *)cell updateWithTitle:title];
  } else if ([SettingItemInfo isInfoItem:item]) {
      [(SettingInfoCell *)cell updateWithTitle:title info:nil];
  } else if ([SettingItemInfo isOptionItem:item]) {
    [(SettingOptionCell *)cell updateWithTitle:title supTitle:nil];
  } else if ([SettingItemInfo isButtonItem:item]) {
      
  }
}

- (void)addGradientMaskToBackButton {
  CAGradientLayer *gradientLayer = [CAGradientLayer layer];
  gradientLayer.frame = self.backButtonBackgroundView.frame;
  gradientLayer.colors =  @[(id)[[UIColor colorWithWhite:0.f alpha:0.5f] CGColor], (id)[[UIColor colorWithWhite:0.f alpha:0.f] CGColor]];
  gradientLayer.startPoint = CGPointMake(0.5f, 0.0f);
  gradientLayer.endPoint = CGPointMake(0.5f, 1.0f);
  [self.backButtonBackgroundView.layer insertSublayer:gradientLayer atIndex:0];
}

- (NSArray *)createSettingItemArray {
  return @[@[@(SettingItemAvatar)],
           @[@(SettingItemProfile),@(SettingItemDisplayName),@(SettingItemEmail),@(SettingItemPassword)],
           @[@(SettingItemSignOut)]];
}

@end
