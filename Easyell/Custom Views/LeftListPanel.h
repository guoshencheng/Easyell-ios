//
//  LeftListPanel.h
//  Easyell
//
//  Created by guoshencheng on 3/23/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "AutoLayoutView.h"

@interface LeftListPanel : AutoLayoutView <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
