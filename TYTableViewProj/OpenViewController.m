//
//  OpenViewController.m
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/20.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import "OpenViewController.h"
#import "OpenDataSourceManager.h"

@implementation OpenViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
}

-(void)tableView:(UITableView *)tableView didSelectObject:(id)object atIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"did selected model:%@",object);
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowWithObject:(id)object atIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}

-(UIView *)tableView:(UITableView *)tableView headerViewForSectionObject:(TYTableBaseSectionModel *)sectionObject atSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(tableView.frame), 20)];
    headerView.backgroundColor = [UIColor blueColor];
    return headerView;
}

-(TYTableViewDataSourceController *)dataSourceController
{
    return [[OpenDataSourceManager alloc]init];
}


@end
