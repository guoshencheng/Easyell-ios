//
//  ItemView.h
//  Easyell
//
//  Created by guoshencheng on 4/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "AutoLayoutView.h"
#import "ItemViewDataSource.h"

@interface ItemView : AutoLayoutView <UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *itemTableView;
@property (strong, nonatomic) ItemViewDataSource *itemViewDataSource;

@end
