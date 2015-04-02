//
//  ItemOptionViewController.h
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ItemViewDataSource.h"

@interface ItemOptionViewController : UIViewController<UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *itemTableView;
@property (strong, nonatomic) ItemViewDataSource *itemViewDataSource;

+ (instancetype)create;

@end
