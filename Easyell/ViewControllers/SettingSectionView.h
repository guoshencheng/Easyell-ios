//
//  SettingSectionView.h
//  Easyell
//
//  Created by apple on 14-7-2.
//  Copyright (c) 2015年 Easyell, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SettingSectionView : UIView

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIView *backgroundView;

+ (id)create;
- (void)updateWithTitle:(NSString *)title;

@end
