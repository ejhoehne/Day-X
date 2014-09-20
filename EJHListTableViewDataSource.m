//
//  EJHListTableViewDataSource.m
//  DayX
//
//  Created by Emily Hoehne on 9/19/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "EJHListTableViewDataSource.h"
#import "ESEntryController.h"
#import "EJHDetailViewController.h"

@implementation EJHListTableViewDataSource

- (void)registerTableView:(UITableView *)tableView {
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [ESEntryController sharedInstance].entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class])];
    cell.textLabel.text = [ESEntryController sharedInstance].entries[indexPath.row][titleKey];
    return cell;
}
@end

