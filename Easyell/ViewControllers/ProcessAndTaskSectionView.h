//
//  ProcessAndTaskSectionView.h
//  Easyell
//
//  Created by guoshencheng on 4/21/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#define PROCESS_SECTION_VIEW @"PROCESS_SECTION_VIEW"

@interface ProcessAndTaskSectionView : UITableViewHeaderFooterView

@property (weak, nonatomic) IBOutlet UILabel *processSectionTitle;
@property (weak, nonatomic) IBOutlet UIImageView *categoryImageView;

- (void)updateWithTitle:(NSString *)text;

@end
