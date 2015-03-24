//
//  SettingPageViewController.m
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 Easyell, Ltd. All rights reserved.
//

#import "SettingPageViewController.h"
#import "SettingPageViewController+Configuration.h"
#import "UIImage+Utility.h"

#define INFO_CELL_WIDTH 267
#define INFO_CELL_HEIGHT 90

@interface SettingPageViewController ()

@end

@implementation SettingPageViewController

+ (instancetype)create {
  SettingPageViewController *settingPageViewController = [[SettingPageViewController alloc] initWithNibName:@"SettingPageViewController" bundle:nil];
  return settingPageViewController;
}

#pragma mark - ViewController LifeCycle

- (void)viewDidLoad {
  [super viewDidLoad];
  [self configureView];
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  [self screenshotInfoCell];
}

#pragma mark - Public Methods

- (void)screenshotInfoCell {
  UITableViewCell *cell = [self.settingsTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:1]];
  self.maskImageView.image = [UIImage imageWithView:cell size:CGSizeMake(INFO_CELL_WIDTH, INFO_CELL_HEIGHT)];
}

#pragma mark - IB Actions

- (IBAction)backButtonClicked:(id)sender {
  [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)signOutButtonClicked:(id)sender {
  
}

@end
