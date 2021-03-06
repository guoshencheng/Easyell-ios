//
//  ProjectViewController.h
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ProjectCollectViewDatasource.h"
#import "ItemKindCell.h"
#import "ActivityPanel.h"
#import "SlideMotion.h"

@interface ProjectViewController : UIViewController <UICollectionViewDelegate, ItemKindCellDelegate, SlideMotionDelegate, SlideMotionDataSource>

@property (weak, nonatomic) IBOutlet UIView *tabView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tabViewLeftConstraint;
@property (weak, nonatomic) IBOutlet UIButton *shouldDoButton;
@property (weak, nonatomic) IBOutlet UIButton *doingButton;
@property (weak, nonatomic) IBOutlet UIButton *doneButton;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) ActivityPanel *activityPanel;
@property (strong, nonatomic) SlideMotion *rightSlideMotion;
@property (strong, nonatomic) ProjectCollectViewDatasource *collectViewDatasource;

+ (instancetype)create;

@end
