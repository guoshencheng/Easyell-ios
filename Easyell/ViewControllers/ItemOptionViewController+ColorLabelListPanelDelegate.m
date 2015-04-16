//
//  ItemOptionViewController+ColorLabelListPanelDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/16/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ItemOptionViewController+ColorLabelListPanelDelegate.h"

@implementation ItemOptionViewController (ColorLabelListPanelDelegate)

- (void)colorLabelListPanel:(ColorLabelListPanel *)colorListPanel didModifySelectColors:(NSArray *)selectColors {
    self.colorList = [[NSMutableArray alloc] initWithArray:selectColors];
    [self.itemTableView reloadData];
}

@end
