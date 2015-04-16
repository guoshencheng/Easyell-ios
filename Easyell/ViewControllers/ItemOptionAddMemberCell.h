//
//  ItemOptionAddMemberCell.h
//  Easyell
//
//  Created by guoshencheng on 4/8/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ItemOptionAddMemberCellDelegate;

#define ITEMOPTION_ADDMEMBER_CELL @"ITEMOPTION_ADDMEMBER_CELL"

@interface ItemOptionAddMemberCell : UITableViewCell <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *addMemberListButton;
@property (weak, nonatomic) IBOutlet UITableView *optionTableView;
@property (weak, nonatomic) id<ItemOptionAddMemberCellDelegate> delegate;
@property (strong, nonatomic) NSArray *membersList;
@property (strong, nonatomic) NSArray *colorList;
- (void)updateWithMembersList:(NSArray *)membersList andColorList:(NSArray *)colorList;

@end

@protocol ItemOptionAddMemberCellDelegate <NSObject>
@optional

- (void)itemOptionAddMemberCellDidClickLabelCell:(ItemOptionAddMemberCell *)cell withSelectColorArray:(NSArray *)array;
- (void)itemOptionAddMemberCell:(ItemOptionAddMemberCell *)cell didClickMemberIndex:(NSInteger)index;

@end