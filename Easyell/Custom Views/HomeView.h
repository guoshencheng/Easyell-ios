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

@interface HomeView : AutoLayoutView<FMMoveTableViewDelegate, SlideMotionDataSource, SlideMotionDelegate>

@property (strong, nonatomic) FMMoveTableView *moveTableView;
@property (strong, nonatomic) SlideMotion *leftSlideMotion;
@property (nonatomic, strong) AutoLayoutView *leftView;
@property (nonatomic, strong) AutoLayoutView *topView;

@end
