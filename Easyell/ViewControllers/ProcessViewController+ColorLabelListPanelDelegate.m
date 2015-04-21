//
//  ProcessViewController+ColorLabelListPanelDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProcessViewController+ColorLabelListPanelDelegate.h"

@implementation ProcessViewController (ColorLabelListPanelDelegate)

- (void)colorLabelListPanel:(ColorLabelListPanel *)colorListPanel didModifySelectColors:(NSArray *)selectColors {
    self.processViewControllerDataSource.colors = selectColors;
    PublicColorsCell *cell = (PublicColorsCell *)[self.itemTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:2]];
    [cell updateWithColors:selectColors];
}

@end
