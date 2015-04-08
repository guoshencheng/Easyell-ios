//
//  ItemOptionAddMemberCell.h
//  Easyell
//
//  Created by guoshencheng on 4/8/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define ITEMOPTION_ADDMEMBER_CELL @"ITEMOPTION_ADDMEMBER_CELL"


@interface ItemOptionAddMemberCell : UITableViewCell <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *addMemberListButton;
@property (weak, nonatomic) IBOutlet UITableView *optionTableView;
@property (strong, nonatomic) NSArray *membersList;

- (void)updateWithMemberList:(NSArray *)memberList;

@end
