//
//  ItemOptionViewController.h
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorLabelListPanel.h"
#import "ItemViewDataSource.h"
#import "SlideMotion.h"

@interface ItemOptionViewController : UIViewController<UITableViewDelegate, SlideMotionDataSource, SlideMotionDelegate, ItemOptionAddMemberCellDelegate>

@property (weak, nonatomic) IBOutlet UITableView *itemTableView;
@property (strong, nonatomic) ColorLabelListPanel *colorLabelListPanel;
@property (strong, nonatomic) SlideMotion *rightSlideMotion;
@property (strong, nonatomic) ItemViewDataSource *itemViewDataSource;

+ (instancetype)create;

@end
