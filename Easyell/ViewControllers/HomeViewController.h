//
//  HomeViewController.h
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroupListDataSource.h"
#import "HomeView.h"

@interface HomeViewController : UIViewController <UIScrollViewDelegate, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *groupTableView;
@property (strong, nonatomic) GroupListDataSource *groupListDataSource;
@property (strong, nonatomic) NSArray *group;

+ (id)create;

@end
