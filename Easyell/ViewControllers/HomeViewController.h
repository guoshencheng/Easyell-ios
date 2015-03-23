//
//  HomeViewController.h
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeView.h"
#import "FMMoveTableView.h"
#import "FMMoveTableViewCell.h"

@interface HomeViewController : UIViewController <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *topBarView;
@property (weak, nonatomic) IBOutlet FMMoveTableView *ProjectOrGroupTableView;
@property (strong, nonatomic) NSArray *group;
@property (strong, nonatomic) HomeView *homeView;

+ (id)create;

@end
