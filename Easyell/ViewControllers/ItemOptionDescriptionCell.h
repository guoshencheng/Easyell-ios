//
//  ItemOptionDescriptionCell.h
//  Easyell
//
//  Created by guoshencheng on 4/8/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define ITEMOPTION_DESCRIPTION_CELL @"ITEMOPTION_DESCRIPTION_CELL"

@interface ItemOptionDescriptionCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
- (void)updateDescriptionLabel:(NSString *)text;

@end
