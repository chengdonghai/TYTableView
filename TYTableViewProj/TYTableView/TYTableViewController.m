//
//  TYTableViewController.m
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/20.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import "TYTableViewController.h"
#import "TYTableViewDelegateController.h"
#import "TYTableViewDataSourceController.h"

@interface TYTableViewController ()

@property(nonatomic,assign) UITableViewStyle style;
@property(nonatomic,strong) TYTableViewDelegateController *delegateController;
@property(nonatomic,strong) TYTableViewDataSourceController *dataSourceControllerTemp;

@end

@implementation TYTableViewController

-(instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super init];
    if (self) {
        self.style = style;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView = [[TYTableView alloc]initWithFrame:self.view.bounds style:self.style];
    self.delegateController = [[TYTableViewDelegateController alloc]init];
    
    self.dataSourceControllerTemp = [self dataSourceController];
    if (self.dataSourceControllerTemp == nil) {
        NSLog(@"dataSourceController 不能为空");
    }
    NSAssert(self.dataSourceControllerTemp != nil, @"SourceManager 不能为空");
    
    self.tableView.delegate = self.delegateController;
    self.tableView.dataSource = self.dataSourceControllerTemp;
    self.tableView.tyDelegate = self;
    self.tableView.tyDataSource = self.dataSourceControllerTemp;
    [self.view addSubview:self.tableView];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(TYTableViewDataSourceController *)dataSourceController
{
    return nil;
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
