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
#import "UIScreen+Utilities.h"
#define ITEM_KIND_CELL @"ITEM_KIND_CELL"

@interface ProjectViewController ()

@end

@implementation ProjectViewController

+ (instancetype)create {
    return [[ProjectViewController alloc] initWithNibName:@"ProjectViewController" bundle:nil];
}

- (void)viewDidLoad {
    ((UICollectionViewFlowLayout *)(self.collectionView.collectionViewLayout)).itemSize = CGSizeMake([UIScreen width], [UIScreen height] - 100);
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

- (IBAction)shouldDoButtonClicked:(id)sender {
    [self.collectionView setContentOffset:CGPointMake(0, 0) animated:YES];
}

- (IBAction)doingButtonClicked:(id)sender {
    [self.collectionView setContentOffset:CGPointMake([UIScreen width], 0) animated:YES];
}

- (IBAction)doneButtonClicked:(id)sender {
    [self.collectionView setContentOffset:CGPointMake([UIScreen width] * 2, 0) animated:YES];
}

- (IBAction)onTouchProfileButton:(id)sender {
    [self.navigationController pushViewController:[SettingPageViewController create] animated:YES];
}

- (IBAction)backButtonClicked:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView.contentOffset.x < [UIScreen width] / 2) {
        [self animateSlideTabView:self.shouldDoButton.frame.origin.x withCompletion:nil];
    } else if (scrollView.contentOffset.x >= [UIScreen width] / 2 && scrollView.contentOffset.x <= (3 * [UIScreen width] / 2)) {
        [self animateSlideTabView:self.doingButton.frame.origin.x withCompletion:nil];
    } else if (scrollView.contentOffset.x > 3 * [UIScreen width] / 2) {
        [self animateSlideTabView:self.doneButton.frame.origin.x withCompletion:nil];
    }
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    if (scrollView.contentOffset.x == 0) {
        
        [self animateSlideTabView:self.shouldDoButton.frame.origin.x withCompletion:nil];
    } else if (scrollView.contentOffset.x == [UIScreen width]) {
        
    }
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
