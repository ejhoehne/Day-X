//
//  EJHListViewController.m
//  DayX
//
//  Created by Emily Hoehne on 9/19/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "EJHListViewController.h"
#import "EJHListTableViewDataSource.h"
#import "EJHDetailViewController.h"
#import "ESEntryController.h"

@interface EJHListViewController ()
@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) EJHListTableViewDataSource *dataSource;

@end

@implementation EJHListViewController

- (void)viewWillAppear:(BOOL)animated   {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(add:)];
    self.navigationItem.rightBarButtonItem = addButton;
    
    self.dataSource = [EJHListTableViewDataSource new];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    self.tableView.delegate = self;
    [self.dataSource registerTableView:self.tableView];
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    EJHDetailViewController *detailViewController = [EJHDetailViewController new];
    [detailViewController updateWithDictionary:[ESEntryController sharedInstance].entries[indexPath.row]];
    [self.navigationController pushViewController:detailViewController animated:YES];
    
}

- (void)add:(id)sender {
    
    EJHDetailViewController *detailViewController = [EJHDetailViewController new];
    [self.navigationController pushViewController:detailViewController animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
