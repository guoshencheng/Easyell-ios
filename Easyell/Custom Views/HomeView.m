//
//  HomeView.m
//  Easyell
//
//  Created by guoshencheng on 3/16/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeView.h"
#import "HomeView+Animation.h"

@implementation HomeView

+ (instancetype)create {
    return [[[NSBundle mainBundle] loadNibNamed:@"HomeView" owner:nil options:nil] lastObject];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self configureSlideMotion];
    [self configureTableView];
    [self configurePerspective];
    [self configureLeftView];
    
}

- (void)configureTableView {
    [self addSubview:self.moveTableView];
    [self.horizontalSlideMotion attachToView:self.moveTableView];
    self.moveTableView.backgroundColor = [UIColor clearColor];
    self.moveTableView.delegate = self;
}

- (void)configureLeftView {
    self.leftView = [[AutoLayoutView alloc] initWithFrame:CGRectMake(-25, 0, 50, 506)];
    self.leftView.backgroundColor = [UIColor redColor];
    self.leftView.layer.transform = _perspective;
    self.leftView.layer.anchorPoint = CGPointMake(1.0, 0.5);
    [self addSubview:self.leftView];
}

- (void)configureSlideMotion {
    self.horizontalSlideMotion = [SlideMotion new];
    self.horizontalSlideMotion.direction = SlideMotionDirectionHorizontal;
    self.horizontalSlideMotion.delegate = self;
    self.horizontalSlideMotion.dataSource = self;
}

- (void)configurePerspective {
    _perspective = CATransform3DIdentity;
    _perspective.m34 = -2.5/2000;
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
    if (offset > 0 && offset <= 50) {
        self.moveTableViewLeftConstraint.constant = offset;
        [self layoutIfNeeded];
        [self sureLeftViewWithOffset:offset];
    }else {
        if (offset < 0 && offset >= -50 && self.moveTableViewLeftConstraint.constant > 0) {
            self.moveTableViewLeftConstraint.constant = 50 + offset;
            [self layoutIfNeeded];
            [self sureLeftViewWithOffset:(50 + offset)];
        }
    }

}

- (void)slideMotion:(SlideMotion *)slideMotion willEndSlideView:(UIView *)view {
    if (self.moveTableViewLeftConstraint.constant > 20) {
        [self animateSlideMoveTableViewToRight];
    } else {
        [self animateSlideMoveTableViewToLeft];
    }
}

@end
