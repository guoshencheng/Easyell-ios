//
//  ProjectViewController.m
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProjectViewController.h"
#import "UIScreen+Utilities.h"
#import "ProcessViewController.h"
#import "TaskViewController.h"
#import "ProjectViewController+animation.h"
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

- (BOOL)prefersStatusBarHidden {
    return YES;
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

- (IBAction)onTouchActivityButton:(id)sender {
    [self slideToShowActivityPanelWithCompletion:nil];
}

- (IBAction)addProcessButtonClicked:(id)sender {
    ProcessViewController *processViewController = [ProcessViewController create];
    processViewController.editable = YES;
    [self.navigationController pushViewController:processViewController animated:YES];
}

- (IBAction)backButtonClicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)ItemKindCell:(ItemKindCell *)cell didClickItem:(NSIndexPath *)indexPath {
    TaskViewController *taskViewController = [TaskViewController create];
    taskViewController.editable = NO;
    [self.navigationController pushViewController:taskViewController animated:YES];
}


#pragma mark - SlideMotionDataSource

- (UIView *)containerViewOfSlideMotion:(SlideMotion *)slideMotion {
    return self.view;
}

#pragma mark - SlideMotionDelegate

- (void)slideMotion:(SlideMotion *)slideMotion didSlideView:(UIView *)view withOffset:(CGFloat)offset {
    if (offset > 0) {
        [self.activityPanel setRightSpace:offset];
        [self.view layoutIfNeeded];
    }
}

- (void)slideMotion:(SlideMotion *)slideMotion willEndSlideView:(UIView *)view {
    if (self.activityPanel.rightSpace > 150) {
        [self slideToHideActivityPanelWithCompletion:nil];
    } else {
        [self slideToShowActivityPanelWithCompletion:nil];
    }
}

@end
