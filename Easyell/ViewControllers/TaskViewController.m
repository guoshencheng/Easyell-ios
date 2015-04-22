//
//  TaskViewController.m
//  Easyell
//
//  Created by guoshencheng on 4/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "TaskViewController.h"
#import "TaskViewController+Configuration.h"

@interface TaskViewController ()

@end

@implementation TaskViewController

#pragma mark - PublicMethod

+ (instancetype)create {
    return [[TaskViewController alloc] initWithNibName:@"TaskViewController" bundle:nil];
}

#pragma mark - LiveCycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureViews];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

#pragma mark - Actions

- (IBAction)didClickLeftButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)didClickRightButton:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - SlideMotionDataSource

- (UIView *)containerViewOfSlideMotion:(SlideMotion *)slideMotion {
    return self.view;
}


@end
