//
//  PublicDescriptionCell.h
//  Easyell
//
//  Created by guoshencheng on 4/17/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#define PUBLIC_DESCRIPTION_CELL @"PUBLIC_DESCRIPTION_CELL"

@interface PublicDescriptionCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
- (void)updateDescriptionLabel:(NSString *)text;

@end
