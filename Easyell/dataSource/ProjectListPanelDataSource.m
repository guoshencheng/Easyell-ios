//
//  ProjectListPanelDataSource.m
//  Easyell
//
//  Created by guoshencheng on 3/16/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "ProjectListPanelDataSource.h"
#import "FMMoveTableViewCell.h"
#import "ProjectListCell.h"

@implementation ProjectListPanelDataSource

- (id)initWithProjectArray:(NSArray *)projectArray {
    if (self = [super init]) {
        self.projectList = projectArray;
    }
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(FMMoveTableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.projectList count];
}

- (UITableViewCell *)tableView:(FMMoveTableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ProjectListCell *cell =  [tableView dequeueReusableCellWithIdentifier: CELL_IDENTIFIER forIndexPath:indexPath];
    if ([tableView indexPathIsMovingIndexPath:indexPath])
    {
        [cell prepareForMove];
    }
    else
    {
        if (tableView.movingIndexPath != nil) {
            indexPath = [tableView adaptedIndexPathForRowAtIndexPath:indexPath];
        }
        cell.shouldIndentWhileEditing = NO;
        cell.showsReorderControl = NO;
    }
    
    return cell;
}


- (BOOL)moveTableView:(FMMoveTableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}


- (void)moveTableView:(FMMoveTableView *)tableView moveRowFromIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
    NSInteger project = [[self.projectList objectAtIndex:fromIndexPath.row] integerValue];
    NSMutableArray *group = [[NSMutableArray alloc] initWithArray:self.projectList];
    [group removeObjectAtIndex:fromIndexPath.row];
    [group insertObject:@(project) atIndex:toIndexPath.row];
    self.projectList = group;
}

@end
