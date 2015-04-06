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
#import "HomeViewController+configuration.h"
#define DATA_JASON_URL_STRING @"http://121.41.115.125/easyell/easyell/index.php"

@implementation HomeViewController

+ (id)create {
    return [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self configureViews];
}

//- (void)getAllPuzzleResponse {
//    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
//    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
//    [dic setObject:@(3009) forKey:@"fn"];
//    [dic setObject:@"{\"userId\":\"2\"}" forKey:@"param"];
//    [manager GET:DATA_JASON_URL_STRING parameters:dic success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSLog(@"%@", [(NSDictionary *)responseObject objectForKey:@"result"]);
//        NSString *string = [(NSDictionary *)responseObject objectForKey:@"result"];
//        NSDictionary *dic2 = [string toDictionaryAsJSON];
//        NSLog(@"%@", dic2);
//    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//        NSLog(@"%@",error);
//    }];
//}

@end
