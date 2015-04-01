//
//  ButtonCell.h
//  Easyell
//
//  Created by guoshencheng on 4/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ButtonCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *label;

- (void)updateLabel:(NSString *)text;
- (CGFloat)getCellHeight;

@end
