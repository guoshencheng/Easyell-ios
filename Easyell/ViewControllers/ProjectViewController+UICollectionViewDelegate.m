//
//  ProjectViewController+UICollectionViewDelegate.m
//  Easyell
//
//  Created by guoshencheng on 4/6/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProjectViewController+UICollectionViewDelegate.h"
#import "ProjectViewController+animation.h"
#import "UIScreen+Utilities.h"

@implementation ProjectViewController (UICollectionViewDelegate)

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView.contentOffset.x < [UIScreen width] / 2) {
        [self animateSlideTabView:self.shouldDoButton.frame.origin.x withCompletion:nil];
    } else if (scrollView.contentOffset.x >= [UIScreen width] / 2 && scrollView.contentOffset.x <= (3 * [UIScreen width] / 2)) {
        [self animateSlideTabView:self.doingButton.frame.origin.x withCompletion:nil];
    } else if (scrollView.contentOffset.x > 3 * [UIScreen width] / 2) {
        [self animateSlideTabView:self.doneButton.frame.origin.x withCompletion:nil];
    }
}

- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}

@end
