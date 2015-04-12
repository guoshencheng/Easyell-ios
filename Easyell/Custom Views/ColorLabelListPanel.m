//
//  ColorLabelListPanel.m
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ColorLabelListPanel.h"

@implementation ColorLabelListPanel

+ (instancetype)create {
    ColorLabelListPanel *view = [[[NSBundle mainBundle] loadNibNamed:@"ColorLabelListPanel" owner:nil options:nil] lastObject];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    return view;
}

- (void)awakeFromNib {
    self.colors = [self getColors];
    self.colorTableView.delegate = self;
    self.colorTableView.dataSource = self;
    [self.colorTableView registerNib:[UINib nibWithNibName:@"ColorLabelCell" bundle:nil] forCellReuseIdentifier:COLORLABEL_CELL];
}

#pragma mark - PrivateMethod

- (NSArray *)getColors {
    return @[[UIColor blueColor], [UIColor redColor], [UIColor yellowColor], [UIColor greenColor], [UIColor purpleColor]];
}

#pragma mark - TableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 45;
}

#pragma mark - TableViewDataSource 

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.colors.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ColorLabelCell *cell = [tableView dequeueReusableCellWithIdentifier:COLORLABEL_CELL forIndexPath:indexPath];
    [cell updateWithColor:[self.colors objectAtIndex:indexPath.row]];
    return cell;
}

@end
