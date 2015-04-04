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
#import "ProjectListPanelDataSource.h"

#define LEFT_VIEW_WIDTH 100

@protocol HomeViewDelegate;
@interface HomeView : AutoLayoutView<FMMoveTableViewDelegate, SlideMotionDataSource, SlideMotionDelegate>

@property (weak, nonatomic) IBOutlet FMMoveTableView *moveTableView;
@property (strong, nonatomic) SlideMotion *horizontalSlideMotion;
@property (nonatomic, strong) AutoLayoutView *leftView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *moveTableViewBottomConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *moveTableViewRightConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *moveTableViewLeftConstraint;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *moveTableViewTopConstraint;
@property (weak, nonatomic) id<HomeViewDelegate> delegate;
@property (strong, nonatomic) ProjectListPanelDataSource *projectDatasource;
@property (assign, nonatomic) CATransform3D perspective;

@end

@protocol HomeViewDelegate <NSObject>
@optional
- (void)HomeViewDidClickProject:(NSArray *)project;

@end
