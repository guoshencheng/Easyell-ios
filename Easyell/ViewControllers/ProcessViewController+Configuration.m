//
//  ProcessViewController+Configuration.m
//  Easyell
//
//  Created by guoshencheng on 4/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProcessViewController+Configuration.h"
#import "UIColor+Utility.h"

@implementation ProcessViewController (Configuration)

- (void)configureViews {
    [self configureTableView];
}

- (void)configureTableView {
    self.itemTableView.delegate = self;
    self.processViewControllerDataSource = [ProcessViewControllerDataSource new];
    self.processViewControllerDataSource.processTitle = @"Titletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitle";
    self.processViewControllerDataSource.processDescription = @"Descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription";
    self.processViewControllerDataSource.colors = @[[UIColor coboxGreen], [UIColor coboxYellow], [UIColor coboxOrange], [UIColor coboxRed], [UIColor coboxPurple], [UIColor coboxBlue]];
    self.itemTableView.dataSource = self.processViewControllerDataSource;
    [self.itemTableView registerNib:[UINib nibWithNibName:@"PublicTitleCell" bundle:nil] forCellReuseIdentifier:PUBLIC_TITLE_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"PublicDescriptionCell" bundle:nil] forCellReuseIdentifier:PUBLIC_DESCRIPTION_CELL];
    [self.itemTableView registerNib:[UINib nibWithNibName:@"PublicColorsCell" bundle:nil] forCellReuseIdentifier:PUBLIC_COLORS_CELL];
}

@end
