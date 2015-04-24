//
//  ProcessAndTaskSectionView.h
//  Easyell
//
//  Created by guoshencheng on 4/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define PROCESS_SECTION_VIEW @"PROCESS_SECTION_VIEW"

@protocol ProcessAndTaskSectionViewDelegate;

@interface ProcessAndTaskSectionView : UITableViewHeaderFooterView

@property (weak, nonatomic) IBOutlet UILabel *processSectionTitle;
@property (weak, nonatomic) IBOutlet UIImageView *categoryImageView;
@property (weak, nonatomic) IBOutlet UIView *rightView;
@property (weak, nonatomic) IBOutlet UILabel *rightButtonTitle;
@property (weak, nonatomic) id<ProcessAndTaskSectionViewDelegate> delegate;

- (void)updateWithTitle:(NSString *)text andActionTitle:(NSString *)action;

@end

@protocol ProcessAndTaskSectionViewDelegate <NSObject>
@optional
- (void)processAndTaskSectionViewDidClickRightButton:(ProcessAndTaskSectionView *)processAndTaskSectionView;

@end
