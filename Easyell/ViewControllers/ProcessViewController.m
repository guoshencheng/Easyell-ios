//
//  ProcessViewController.m
//  Easyell
//
//  Created by guoshencheng on 4/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProcessViewController.h"
#import "ProcessViewController+Configuration.h"

@interface ProcessViewController ()

@end

@implementation ProcessViewController

#pragma mark - PublicMethod

+ (instancetype)create {
    return [[ProcessViewController alloc] initWithNibName:@"ProcessViewController" bundle:nil];
}

#pragma mark - LiveCycleOrSuperMethod

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureViews];
}

- (void)viewWillAppear:(BOOL)animated {
    
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

#pragma mark - Actions

- (IBAction)backButtonClicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - SlideMotionDataSource

- (UIView *)containerViewOfSlideMotion:(SlideMotion *)slideMotion {
    return self.view;
}


@end
