//
//  ProcessTaskListCell.m
//  Easyell
//
//  Created by guoshencheng on 4/20/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProcessTaskListCell.h"
#import "MemberListCell.h"

@implementation ProcessTaskListCell

- (void)awakeFromNib {
    //[self setSelectionStyle:UITableViewCellSelectionStyleNone];
    [self.memberCollectionView registerNib:[UINib nibWithNibName:@"MemberListCell" bundle:nil] forCellWithReuseIdentifier:MEMBERLIST_CELL];
    self.memberCollectionView.delegate = self;
    self.memberCollectionView.dataSource = self;
}

- (void)updateWithMembers:(NSArray *)members andTaskTtile:(NSString *)taskTitle {
    self.addTaskView.hidden = YES;
    self.taskView.hidden = NO;
    self.members = members;
    self.taskTitleLabel.text = taskTitle;
    [self.memberCollectionView reloadData];
    [self layoutIfNeeded];
    CGRect frame = self.frame;
    frame.size.height = [self caclulateHeight];
    self.frame = frame;
}

- (void)updateToAddTaskButton {
    self.addTaskView.hidden = NO;
    self.taskView.hidden = YES;
    self.addTaskLabel.text = @"Add task";
    CGRect frame = self.frame;
    frame.size.height = 30;
    self.frame = frame;
}

- (CGFloat)caclulateHeight {
    return 5 + self.taskTitleLabel.frame.size.height + 5 + 25 + 5;
}

#pragma mark - datasource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.members.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    MemberListCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:MEMBERLIST_CELL forIndexPath:indexPath];
    return cell;
}

@end
