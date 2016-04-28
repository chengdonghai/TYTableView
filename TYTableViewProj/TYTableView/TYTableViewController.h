//
//  TYTableViewController.h
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/20.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TYTableView.h"
#import "TYTableViewDataSource.h"
#import "TYTableViewDelegate.h"
@class TYTableViewDataSourceController;

@protocol TYTableViewControllerDataSouce <NSObject>

@required
-(TYTableViewDataSourceController *)dataSourceController;
@end

@interface TYTableViewController : UIViewController<TYTableViewDelegate,TYTableViewControllerDataSouce>

@property(nonatomic,strong) TYTableView *tableView;

-(instancetype)initWithStyle:(UITableViewStyle)style;

@end
