//
//  HomeView.m
//  Easyell
//
//  Created by guoshencheng on 3/16/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeView.h"

@implementation HomeView


- (id)initWithFrame:(CGRect)frame {
    HomeView *homeView;
    if ((homeView = [super initWithFrame:frame])) {
        [homeView configureSlideMotion];
        [homeView configureTableView];
        homeView.backgroundColor = [UIColor whiteColor];
    }
    return homeView;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self configureSlideMotion];
    [self configureTableView];
    
}

- (void)configureTableView {
    self.moveTableView = [[FMMoveTableView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    [self addSubview:self.moveTableView];
    [self.leftSlideMotion attachToView:self.moveTableView];
    self.moveTableView.backgroundColor = [UIColor blackColor];
    self.moveTableView.delegate = self;
}

- (void)configureLeftView {
    
}

- (void)configureTopView {
    
}

- (void)configureSlideMotion {
    self.leftSlideMotion = [SlideMotion new];
    self.leftSlideMotion.direction = SlideMotionDirectionLeft;
    self.leftSlideMotion.delegate = self;
    self.leftSlideMotion.dataSource = self;
}

#pragma mark - fmmoveTableViewdelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    NSLog(@"%f", scrollView.contentOffset.y);
}

#pragma mark - SlideMotionDataSource

- (UIView *)containerViewOfSlideMotion:(SlideMotion *)slideMotion {
    return self;
}

#pragma mark - SlideMotionDelegate

- (void)slideMotion:(SlideMotion *)slideMotion didSlideView:(UIView *)view withOffset:(CGFloat)offset {
    NSLog(@"%f", offset);
}

@end
