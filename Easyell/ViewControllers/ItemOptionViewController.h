//
//  ItemOptionViewController.h
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorLabelListPanel.h"
#import "MemberPanel.h"
#import "ItemViewDataSource.h"
#import "SlideMotion.h"

@interface ItemOptionViewController : UIViewController<UITableViewDelegate, SlideMotionDataSource, SlideMotionDelegate, ItemOptionAddMemberCellDelegate, ColorLabelListPanelDelegate, MemberPanelDelegate>

@property (weak, nonatomic) IBOutlet UITableView *itemTableView;
@property (strong, nonatomic) ColorLabelListPanel *colorLabelListPanel;
@property (strong, nonatomic) MemberPanel *memberPanel;
@property (strong, nonatomic) NSMutableArray *membersList;
@property (strong, nonatomic) NSMutableArray *colorList;
@property (strong, nonatomic) SlideMotion *rightSlideMotion;
@property (strong, nonatomic) ItemViewDataSource *itemViewDataSource;

+ (instancetype)create;

@end
