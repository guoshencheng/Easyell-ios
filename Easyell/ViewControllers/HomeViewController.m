//
//  HomeViewController.m
//  Easyell
//
//  Created by guoshencheng on 3/10/15.
//  Copyright (c) 2015 guoshencheng. All rights reserved.
//

#import "HomeViewController.h"

@implementation HomeViewController {
    CATransform3D perspective;
}

static NSString *sCellIdentifier;

+ (id)create {
    return [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.group = @[@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1),@(1)];
    self.ProjectOrGroupTableView.delegate = self;
    self.ProjectOrGroupTableView.dataSource = self;
    [self.ProjectOrGroupTableView reloadData];
    self.homeView = [HomeView create];
    [self.view addSubview:self.homeView];
    CGRect frame = self.homeView.frame;
    frame.origin.y = 60;
    self.homeView.frame = frame;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(FMMoveTableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.group count];
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"Section %li", (long)section];
}


- (UITableViewCell *)tableView:(FMMoveTableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FMMoveTableViewCell *cell = [[FMMoveTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:sCellIdentifier];
    cell.textLabel.text = [NSString stringWithFormat:@"%d", indexPath.row];
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
    NSInteger project = [[self.group objectAtIndex:fromIndexPath.row] integerValue];
    NSMutableArray *group = [[NSMutableArray alloc] initWithArray:self.group];
    [group removeObjectAtIndex:fromIndexPath.row];
    [group insertObject:@(project) atIndex:toIndexPath.row];
    self.group = group;
}



#pragma mark - Table view delegate

- (CGFloat)tableView:(FMMoveTableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 30;
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
