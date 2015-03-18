//
//  HomeView.h
//  Easyell
//
//  Created by guoshencheng on 3/16/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "AutoLayoutView.h"
#import "SlideMotion.h"
#import "FMMoveTableView.h"

#define LEFT_VIEW_WIDTH 100

@interface HomeView : AutoLayoutView<FMMoveTableViewDelegate, SlideMotionDataSource, SlideMotionDelegate>

@property (weak, nonatomic) IBOutlet FMMoveTableView *moveTableView;
@property (strong, nonatomic) SlideMotion *horizontalSlideMotion;
@property (nonatomic, strong) AutoLayoutView *leftView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *moveTableViewHeightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *moveTableViewWidthConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *moveTableViewLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *moveTableViewTopConstraint;
@property (assign, nonatomic) CATransform3D perspective;

@end
