//
//  ColorLabelListPanel.m
//  Easyell
//
//  Created by guoshencheng on 4/12/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ColorLabelListPanel.h"
#import "UIColor+Utility.h"

@implementation ColorLabelListPanel

+ (instancetype)create {
    ColorLabelListPanel *view = [[[NSBundle mainBundle] loadNibNamed:@"ColorLabelListPanel" owner:nil options:nil] lastObject];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    return view;
}

- (void)awakeFromNib {
    self.colors = [self getColors];
    self.selectColors = [[NSMutableArray alloc] init];
    self.layer.cornerRadius = 8;
    self.colorTableView.delegate = self;
    self.colorTableView.dataSource = self;
    [self.colorTableView registerNib:[UINib nibWithNibName:@"ColorLabelCell" bundle:nil] forCellReuseIdentifier:COLORLABEL_CELL];
}

- (void)reloadData {
    [self.colorTableView reloadData];
}

#pragma mark - PrivateMethod

- (NSArray *)getColors {
return @[[UIColor coboxGreen], [UIColor coboxYellow], [UIColor coboxOrange], [UIColor coboxRed], [UIColor coboxPurple], [UIColor coboxBlue]];
}

#pragma mark - TableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIColor *selectColor  = [self.colors objectAtIndex:indexPath.row];
    if (![self.selectColors containsObject:selectColor]) {
        [self.selectColors addObject:selectColor];
    } else {
        [self.selectColors removeObject:selectColor];
    }
    if ([self.delegate respondsToSelector:@selector(colorLabelListPanel:didModifySelectColors:)]) {
        [self.delegate colorLabelListPanel:self didModifySelectColors:self.selectColors];
    }
    [tableView reloadData];
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
    UIColor *currentColor = [self.colors objectAtIndex:indexPath.row];
    [cell updateWithColor:currentColor andSelected:[self.selectColors containsObject:currentColor]];
    return cell;
}

@end
