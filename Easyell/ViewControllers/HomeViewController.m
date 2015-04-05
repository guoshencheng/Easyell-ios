//
//  HomeViewController.m
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController.h"
#import "ProjectViewController.h"
#import "SettingPageViewController.h"
#import "AFHTTPRequestOperationManager.h"
#import "NSString+Utility.h"
#import "GroupSectionView.h"
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
    self.profileButton.layer.cornerRadius = 15;
    self.groupTableView.delegate = self;
    self.groupListDataSource = [GroupListDataSource new];
    self.groupListDataSource.groups = [self getGroupList];
    self.groupListDataSource.configureGroupListCellBlock = ^(UITableViewCell *cell, NSArray *projectList) {
            
    };
    self.groupTableView.dataSource = self.groupListDataSource;
    [self.groupTableView registerNib:[UINib nibWithNibName:@"GroupListCell" bundle:nil] forCellReuseIdentifier:GROUP_LIST_CELL];
    [self.view layoutIfNeeded];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)onTouchProfileButton:(id)sender {
    [self.navigationController pushViewController:[SettingPageViewController create] animated:YES];
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    GroupSectionView *view = [[[NSBundle mainBundle] loadNibNamed:@"GroupSectionView" owner:nil options:nil] lastObject];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 60;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 45;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    ProjectViewController *projectViewController = [ProjectViewController create];
    [self.navigationController pushViewController:projectViewController animated:YES];
}

- (NSArray *)getGroupList {
    return @[
             @[@(1),@(1),@(1),@(1),@(1),@(1)],
             @[@(1),@(1),@(1),@(1),@(1)],
             @[@(1),@(1)],
             @[@(1),@(1),@(1),@(1),@(1),@(1),@(1)]
             ];
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
