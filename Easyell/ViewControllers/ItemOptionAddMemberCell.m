//
//  ItemOptionAddMemberCell.m
//  Easyell
//
//  Created by guoshencheng on 4/8/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemOptionAddMemberCell.h"
#import "OpetionCell.h"

@implementation ItemOptionAddMemberCell

- (void)awakeFromNib {
    [self setSelectionStyle:UITableViewCellSelectionStyleNone];
    self.optionTableView.layer.cornerRadius = 5;
    self.optionTableView.layer.borderColor = [[UIColor colorWithRed:(222.0/255) green:(222.0/255) blue:(222.0/255) alpha:1] CGColor];
    self.optionTableView.layer.borderWidth = 1;
    [self.optionTableView registerNib:[UINib nibWithNibName:@"OpetionCell" bundle:nil] forCellReuseIdentifier:OPTION_CELL];
    self.optionTableView.delegate = self;
    self.optionTableView.dataSource = self;
    self.addMemberListButton.layer.cornerRadius = self.addMemberListButton.frame.size.width / 2;
    self.addMemberListButton.layer.borderColor = [[UIColor colorWithRed:(222.0/255) green:(222.0/255) blue:(222.0/255) alpha:1] CGColor];
    self.addMemberListButton.layer.borderWidth = 1;
}

- (IBAction)clickAddMemberButton:(id)sender {
    
}

- (void)updateWithMemberList:(NSArray *)memberList {
    self.membersList = memberList;
    CGRect frame = self.frame;
    frame.size.height = [self caculateHeight];
    self.frame = frame;
}

- (CGFloat)caculateHeight {
    return 20 + self.membersList.count * 45 + 20;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.membersList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    OpetionCell *cell = [tableView dequeueReusableCellWithIdentifier:OPTION_CELL forIndexPath:indexPath];
    [cell updateWithMembersOrLabels:[self.membersList objectAtIndex:indexPath.row] andIsMemberCell:(indexPath.row != 0)];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 45;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end