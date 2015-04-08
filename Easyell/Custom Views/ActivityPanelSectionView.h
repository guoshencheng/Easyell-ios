//
//  ActivityPanelSectionView.h
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityPanelSectionView : UIView

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
- (void)updateTitleLabel:(NSString *)title;
@end
