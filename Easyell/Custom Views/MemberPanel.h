//
//  MemberPanel.h
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "AutoLayoutView.h"
#import "MemberTableViewCell.h"

#define MEMBER_PANEL_WIDTH 280

@protocol MemberPanelDelegate;

@interface MemberPanel : AutoLayoutView <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *memberTableView;
@property (assign, nonatomic) NSInteger currentMembersIndex;
@property (strong, nonatomic) NSArray *members;
@property (strong, nonatomic) NSMutableArray *selectMembers;
@property (weak, nonatomic) id<MemberPanelDelegate>delegate;
- (void)reloadData;
@end

@protocol MemberPanelDelegate <NSObject>
@optional
- (void)memberPanel:(MemberPanel *)mamberPanel didModifySelectedMembers:(NSArray *)selectMemebers;

@end
