//
//  TextCell.h
//  Easyell
//
//  Created by guoshencheng on 4/1/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (void)updateTitle:(NSString *)title;
- (NSString *)getTextfield;
- (CGFloat)getCellHeight;


@end
