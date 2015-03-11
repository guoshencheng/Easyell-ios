//
//  HomeViewController.m
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController.h"

@implementation HomeViewController {
    CATransform3D perspective;
}

+ (id)create {
    return [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
