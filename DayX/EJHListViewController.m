//
//  EJHListViewController.m
//  DayX
//
//  Created by Emily Hoehne on 9/20/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "EJHListViewController.h"
#import "EJHListTableViewDataSource.h"
#import "ESEntriesController.h"

@interface EJHListViewController () <UITableViewDelegate>
@property (strong, nonatomic) EJHListTableViewDataSource *dataSource;
@property (strong, nonatomic) UITableView * tableView;


@end

@implementation EJHListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.dataSource = [EJHListTableViewDataSource new];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        self.tableView.dataSource = self.dataSource;
    
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    [self.dataSource registerTableView:self.tableView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
