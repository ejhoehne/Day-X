//
//  EJHListTableViewDataSource.h
//  DayX
//
//  Created by Emily Hoehne on 9/19/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EJHListTableViewDataSource : NSObject <UITableViewDataSource>

-(void)registerTableView:(UITableView *)tableView;
@end
