//
//  ItemOptionViewController.m
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemOptionViewController.h"
#import "ItemOptionViewController+configuration.h"

@interface ItemOptionViewController ()

@end

@implementation ItemOptionViewController

+ (instancetype)create {
    return [[ItemOptionViewController alloc] initWithNibName:@"ItemOptionViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    [self configureViews];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (IBAction)onTouchProfileButton:(id)sender {
}

- (IBAction)backButtonClicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}




@end
