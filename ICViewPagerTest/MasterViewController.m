//
//  MasterViewController.m
//  ICViewPagerTest
//
//  Created by Paul Nicholson on 10/22/13.
//  Copyright (c) 2013 Refactored Tech, Inc. All rights reserved.
//

#import "MasterViewController.h"

#import "DetailViewController.h"

@interface MasterViewController () {
    NSArray *_objects;
}
@end

@implementation MasterViewController

- (NSArray *)objects {
    if (!_objects) {
        _objects = @[ @"Row 1", @"Row 2", @"Row 3", @"Row 4",
        ];
    }
    return _objects;
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  return self.objects.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text = self.objects[indexPath.row];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        [[segue destinationViewController] setDetailItem:self.objects[indexPath.row]];
    }
}

@end
