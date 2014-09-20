//
//  EJHListTableViewDataSource.m
//  DayX
//
//  Created by Emily Hoehne on 9/20/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "EJHListTableViewDataSource.h"
#import "ESEntriesController.h"

@implementation EJHListTableViewDataSource



-(void)registerTableView:(UITableView *)tableView {
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [ESEntriesController sharedInstance].entries.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];

    cell.textLabel.text = [ESEntriesController sharedInstance].entries[indexPath.row][TitleKey];
                             
    return cell;
}
@end