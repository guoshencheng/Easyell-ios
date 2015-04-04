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

@interface ProjectViewController : UIViewController <UICollectionViewDelegate, ItemKindCellDelegate>

@property (weak, nonatomic) IBOutlet UIView *tabView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tabViewLeftConstraint;
@property (weak, nonatomic) IBOutlet UIButton *allItemsButton;
@property (weak, nonatomic) IBOutlet UIButton *ownItemsButton;
@property (weak, nonatomic) IBOutlet UIButton *postItemsButton;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) ProjectCollectViewDatasource *collectViewDatasource;

+ (instancetype)create;

@end
