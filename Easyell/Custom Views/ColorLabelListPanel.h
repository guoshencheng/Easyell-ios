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

@protocol ColorLabelListPanelDelegate;

@interface ColorLabelListPanel : AutoLayoutView <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *colorTableView;
@property (strong, nonatomic) NSArray *colors;
@property (strong, nonatomic) NSMutableArray *selectColors;
@property (weak, nonatomic) id<ColorLabelListPanelDelegate>delegate;
- (void)reloadData;
@end

@protocol ColorLabelListPanelDelegate <NSObject>
@optional
- (void)colorLabelListPanel:(ColorLabelListPanel *)colorListPanel didModifySelectColors:(NSArray *)selectColors;

@end
