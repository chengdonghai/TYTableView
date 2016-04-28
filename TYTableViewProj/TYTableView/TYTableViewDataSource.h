//
//  TYTableViewDataSource.h
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/21.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#ifndef TYTableViewDataSource_h
#define TYTableViewDataSource_h


#endif /* TYTableViewDataSource_h */
#import <UIKit/UIKit.h>

@class TYTableBaseRowModel;
@class TYTableBaseSectionModel;

@protocol TYTableViewDataSource <UITableViewDataSource>

@optional
-(TYTableBaseRowModel *)tableView:(UITableView *)tableView objectForRowAtIndexPath:(NSIndexPath *)indexPath;
-(TYTableBaseSectionModel *)tableView:(UITableView *)tableView objectForSectionAtSection:(NSInteger)section;

-(Class)tableView:(UITableView *)tableView cellClassRowAtIndexPath:(NSIndexPath *)indexPath;

@end