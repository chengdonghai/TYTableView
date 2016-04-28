//
//  OpenDataSourceManager.m
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/27.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import "OpenDataSourceManager.h"
#import "TYTableBaseSectionModel.h"
#import "OpenTableViewCell.h"
#import "TYTableBaseRowModel.h"
@implementation OpenDataSourceManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        TYTableBaseRowModel *row1 = [[TYTableBaseRowModel alloc]initWithImage:nil title:@"标题1" subTitle:@"subtitle1"];
        TYTableBaseRowModel *row2 = [[TYTableBaseRowModel alloc]initWithImage:nil title:@"标题2" subTitle:@"subtitle2"];

        TYTableBaseSectionModel *seciton1 = [[TYTableBaseSectionModel alloc]initWithItemArray:[@[row1,row2] mutableCopy]];
        self.sections = @[seciton1];
    }
    return self;
}

-(Class)tableView:(UITableView *)tableView cellClassRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [OpenTableViewCell class];
}
 

@end
