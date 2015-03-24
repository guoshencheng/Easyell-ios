//
//  HomeViewController.m
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController.h"
#import "SettingPageViewController.h"

@implementation HomeViewController {
    CATransform3D perspective;
}

static NSString *sCellIdentifier;

+ (id)create {
    return [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.profileButton.layer.cornerRadius = 15;
    self.homeView = [HomeView create];
    [self.view addSubview:self.homeView];
    CGRect frame = self.homeView.frame;
    frame.origin.y = 60;
    self.homeView.frame = frame;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)onTouchProfileButton:(id)sender {
    [self.navigationController pushViewController:[SettingPageViewController create] animated:YES];
}


@end
