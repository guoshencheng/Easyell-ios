//
//  HomeViewController.m
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController.h"
#import "AFHTTPRequestOperationManager.h"
#import "NSString+Utility.h"
#import "HomeViewController+configuration.h"
#import "HomeViewController+animation.h"
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

- (UIView *)containerViewOfSlideMotion:(SlideMotion *)slideMotion {
    return self.view;
}

- (void)slideMotion:(SlideMotion *)slideMotion didSlideView:(UIView *)view withOffset:(CGFloat)offset {
    NSLog(@"%f", offset);
    if (offset > 0 && offset <= LEFT_VIEW_WIDTH && self.homeContrainerViewLeftConstraint.constant != LEFT_VIEW_WIDTH) {
        self.homeContrainerViewLeftConstraint.constant = offset;
        self.homeContainerViewRightConstraint.constant = -offset;
        [self.settingsPanel setLeftSpace:(-LEFT_VIEW_WIDTH / 2 + offset / 2)];
        [self.view layoutIfNeeded];
    }else {
        if (offset < 0 && offset >= -LEFT_VIEW_WIDTH && self.homeContrainerViewLeftConstraint.constant > 0) {
            self.homeContrainerViewLeftConstraint.constant = LEFT_VIEW_WIDTH + offset;
            self.homeContainerViewRightConstraint.constant = -(LEFT_VIEW_WIDTH + offset);
            [self.settingsPanel setLeftSpace:offset / 2];
            [self.view layoutIfNeeded];
        }
    }
    
}

- (void)slideMotion:(SlideMotion *)slideMotion willEndSlideView:(UIView *)view {
    if (self.homeContrainerViewLeftConstraint.constant > (LEFT_VIEW_WIDTH / 2)) {
        [self slideHomeViewToRight];
    } else {
        [self slideHomeViewToLeft];
    }
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
