//
//  HomeViewController.m
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController.h"
#import "SettingPageViewController.h"
#import "AFHTTPRequestOperationManager.h"
#import "NSString+Utility.h"
#import "ItemView.h"
#define DATA_JASON_URL_STRING @"http://121.41.115.125/easyell/easyell/index.php"

@implementation HomeViewController {
    CATransform3D perspective;
}

static NSString *sCellIdentifier;

+ (id)create {
    return [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.frame = [UIScreen mainScreen].bounds;
    [self getAllPuzzleResponse];
    self.profileButton.layer.cornerRadius = 15;
    self.homeView = [HomeView create];
    [self.view addSubview:self.homeView];
    [self.homeView setLeftSpace:0];
    [self.homeView setTopSpace:60];
    [self.homeView setRightSpace:0];
    [self.homeView setBottomSpace:0];
    ItemView *itemView = [ItemView create];
    [self.view addSubview:itemView];
    [itemView setLeftSpace:0];
    [itemView setRightSpace:0];
    [itemView setTopSpace:0];
    [itemView setBottomSpace:0];
    [self.view layoutIfNeeded];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)onTouchProfileButton:(id)sender {
    [self.navigationController pushViewController:[SettingPageViewController create] animated:YES];
}

- (void)getAllPuzzleResponse {
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setObject:@(3009) forKey:@"fn"];
    [dic setObject:@"{\"userId\":\"2\"}" forKey:@"param"];
    [manager GET:DATA_JASON_URL_STRING parameters:dic success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@", [(NSDictionary *)responseObject objectForKey:@"result"]);
        NSString *string = [(NSDictionary *)responseObject objectForKey:@"result"];
        NSDictionary *dic2 = [string toDictionaryAsJSON];
        NSLog(@"%@", dic2);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];
}

@end
