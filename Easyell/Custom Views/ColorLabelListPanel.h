//
//  ColorLabelListPanel.h
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "AutoLayoutView.h"
#import "ColorLabelCell.h"

#define COLOR_LABEL_LISTPANEL_WIDTH 280

@interface ColorLabelListPanel : AutoLayoutView <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *colorTableView;
@property (strong, nonatomic) NSArray *colors;

@end
