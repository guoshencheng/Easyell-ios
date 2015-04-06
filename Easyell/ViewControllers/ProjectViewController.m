//
//  ProjectViewController.m
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProjectViewController.h"
#import "SettingPageViewController.h"
#import "ItemOptionViewController.h"
#import "UIScreen+Utilities.h"
#import "ProjectViewController+configuration.h"

@interface ProjectViewController ()

@end

@implementation ProjectViewController

+ (instancetype)create {
    return [[ProjectViewController alloc] initWithNibName:@"ProjectViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureViews];
}

- (IBAction)shouldDoButtonClicked:(id)sender {
    [self.collectionView setContentOffset:CGPointMake(0, 0) animated:YES];
}

- (IBAction)doingButtonClicked:(id)sender {
    [self.collectionView setContentOffset:CGPointMake([UIScreen width], 0) animated:YES];
}

- (IBAction)doneButtonClicked:(id)sender {
    [self.collectionView setContentOffset:CGPointMake([UIScreen width] * 2, 0) animated:YES];
}

- (IBAction)onTouchProfileButton:(id)sender {
    [self.navigationController pushViewController:[SettingPageViewController create] animated:YES];
}

- (IBAction)backButtonClicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)ItemKindCell:(ItemKindCell *)cell didClickItem:(NSIndexPath *)indexPath {
    ItemOptionViewController *itemOptionViewController = [ItemOptionViewController create];
    [self.navigationController pushViewController:itemOptionViewController animated:YES];
}


@end
