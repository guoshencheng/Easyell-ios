//
//  ProjectViewController.m
//  Easyell
//
//  Created by guoshencheng on 4/2/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProjectViewController.h"
#import "ProjectViewController+animation.h"
#import "SettingPageViewController.h"
#import "ItemOptionViewController.h"
#define ITEM_KIND_CELL @"ITEM_KIND_CELL"

@interface ProjectViewController ()

@end

@implementation ProjectViewController

+ (instancetype)create {
    return [[ProjectViewController alloc] initWithNibName:@"ProjectViewController" bundle:nil];
}

- (void)viewDidLoad {
    self.collectViewDatasource = [ProjectCollectViewDatasource new];
    self.collectViewDatasource.itemsKind = [[NSMutableArray alloc] initWithArray:[self createItems]];
    __weak typeof(self) weakSelf = self;
    self.collectViewDatasource.configureCollectionCellBlock = ^(UICollectionViewCell *cell, NSArray *items) {
        [(ItemKindCell *)cell updateWithItems:items];
        ((ItemKindCell *)cell).delegate = weakSelf;
    };
    self.collectViewDatasource.reuseId = ITEM_KIND_CELL;
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self.collectViewDatasource;
    [self.collectionView registerNib:[UINib nibWithNibName:@"ItemKindCell" bundle:nil] forCellWithReuseIdentifier:ITEM_KIND_CELL];
    [super viewDidLoad];
}

- (IBAction)allItemsButtonClicked:(id)sender {
    [self animateSlideTabView:self.allItemsButton.frame.origin.x withCompletion:nil];
}

- (IBAction)owenItemsButtonClicked:(id)sender {
    [self animateSlideTabView:self.ownItemsButton.frame.origin.x withCompletion:nil];
}

- (IBAction)postItemsButtonClicked:(id)sender {
    [self animateSlideTabView:self.postItemsButton.frame.origin.x withCompletion:nil];
}

- (IBAction)onTouchProfileButton:(id)sender {
    [self.navigationController pushViewController:[SettingPageViewController create] animated:YES];
}

- (IBAction)backButtonClicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (NSArray *)createItems {
    return @[@[@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1)],
             @[@(1),@(1),@(1),@(1),@(1),@(1),@(1)],
             @[@(1),@(1),@(1),@(1),@(1),@(1)],
             ];
}

- (void)ItemKindCell:(ItemKindCell *)cell didClickItem:(NSIndexPath *)indexPath {
    ItemOptionViewController *itemOptionViewController = [ItemOptionViewController create];
    [self.navigationController pushViewController:itemOptionViewController animated:YES];
}


@end
