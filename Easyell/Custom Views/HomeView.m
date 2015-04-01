//
//  HomeView.m
//  Easyell
//
//  Created by guoshencheng on 3/16/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeView.h"
#import "LeftListPanel.h"
#import "HomeView+Animation.h"

@implementation HomeView

+ (instancetype)create {
    HomeView *view = [[[NSBundle mainBundle] loadNibNamed:@"HomeView" owner:nil options:nil] lastObject];
    view.translatesAutoresizingMaskIntoConstraints = NO;
    return view;
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
    self.moveTableView.clipsToBounds = YES;
    self.moveTableView.separatorStyle =  UITableViewCellSeparatorStyleSingleLine;
    self.moveTableView.separatorInset = UIEdgeInsetsMake(0,0,0,0);
    [self.horizontalSlideMotion attachToView:self.moveTableView];
    self.moveTableView.tableFooterView = nil;
    NSArray *projectList = @[@(1), @(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1)];
    [self.moveTableView registerNib:[UINib nibWithNibName:@"ProjectListCell" bundle:nil] forCellReuseIdentifier:CELL_IDENTIFIER];
    self.projectDatasource = [[ProjectListPanelDataSource alloc] initWithProjectArray:projectList];
    self.moveTableView.dataSource = self.projectDatasource;
    self.moveTableView.delegate = self;
}

- (void)configureLeftView {
    self.leftView = [LeftListPanel create];
    [self addSubview:self.leftView];
    [self.leftView setLeftSpace:-LEFT_VIEW_WIDTH / 2];
    [self.leftView setTopSpace:0];
    [self.leftView setWidthConstant:LEFT_VIEW_WIDTH];
    [self.leftView setBottomSpace:0];
    
//   [self.leftView setFrame:CGRectMake(-(LEFT_VIEW_WIDTH / 2), 0, LEFT_VIEW_WIDTH, 508)];
    self.leftView.layer.transform = _perspective;
    self.leftView.layer.anchorPoint = CGPointMake(1.0, 0.5);
    [self sureLeftViewWithOffset:0];
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
    if (offset > 0 && offset <= LEFT_VIEW_WIDTH && self.moveTableViewLeftConstraint.constant != LEFT_VIEW_WIDTH) {
        self.moveTableViewLeftConstraint.constant = offset;
        [self layoutIfNeeded];
        [self sureLeftViewWithOffset:offset];
    }else {
        if (offset < 0 && offset >= -LEFT_VIEW_WIDTH && self.moveTableViewLeftConstraint.constant > 0) {
            self.moveTableViewLeftConstraint.constant = LEFT_VIEW_WIDTH + offset;
            [self layoutIfNeeded];
            [self sureLeftViewWithOffset:(LEFT_VIEW_WIDTH + offset)];
        }
    }

}

- (void)slideMotion:(SlideMotion *)slideMotion willEndSlideView:(UIView *)view {
    if (self.moveTableViewLeftConstraint.constant > (LEFT_VIEW_WIDTH / 2)) {
        [self animateSlideMoveTableViewToRight];
    } else {
        [self animateSlideMoveTableViewToLeft];
    }
}

#pragma mark - Table view delegate

- (CGFloat)tableView:(FMMoveTableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}


- (NSIndexPath *)moveTableView:(FMMoveTableView *)tableView targetIndexPathForMoveFromRowAtIndexPath:(NSIndexPath *)sourceIndexPath toProposedIndexPath:(NSIndexPath *)proposedDestinationIndexPath
{
    
    return proposedDestinationIndexPath;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
