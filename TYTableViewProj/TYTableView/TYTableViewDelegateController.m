//
//  TYTableViewDelegateController.m
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/21.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import "TYTableViewDelegateController.h"
#import "TYTableBaseRowModel.h"
#import "TYTableViewDataSource.h"
#import "TYTableView.h"

@implementation TYTableViewDelegateController

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TYTableView *tytableView = (TYTableView *)tableView;
    
    id<TYTableViewDataSource> dataSource = tytableView.tyDataSource;
    id object = nil;
    if (dataSource && [dataSource respondsToSelector:@selector(tableView:objectForRowAtIndexPath:)]) {
        object = [dataSource tableView:tableView objectForRowAtIndexPath:indexPath];
    }
    if (tytableView.tyDelegate && [tytableView.tyDelegate respondsToSelector:@selector(tableView:didSelectObject:atIndexPath:)]) {
        if (object) {
            [tytableView.tyDelegate tableView:tytableView didSelectObject:object atIndexPath:indexPath];
        } else {
            [tytableView.tyDelegate tableView:tytableView didSelectRowAtIndexPath:indexPath];
        }
        
    } else {
        if(tytableView.tyDelegate && [tytableView.tyDelegate respondsToSelector:@selector(tableView:didSelectRowAtIndexPath:)]) {
            [tytableView.tyDelegate tableView:tytableView didSelectRowAtIndexPath:indexPath];
        }
    }
     
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TYTableView *tytableView = (TYTableView *)tableView;
    
    id<TYTableViewDataSource> dataSource = tytableView.tyDataSource;

    id object = nil;
    if (dataSource && [dataSource respondsToSelector:@selector(tableView:objectForRowAtIndexPath:)]) {
        object = [dataSource tableView:tableView objectForRowAtIndexPath:indexPath];
    }
    
    if (tytableView.tyDelegate && [tytableView.tyDelegate respondsToSelector:@selector(tableView:heightForRowWithObject:atIndexPath:)]) {
        if (object) {
            return [tytableView.tyDelegate tableView:tytableView heightForRowWithObject:object atIndexPath:indexPath];
        } else {
            return [tytableView.tyDelegate tableView:tytableView heightForRowAtIndexPath:indexPath];
        }
    } else {
        if(tytableView.tyDelegate && [tytableView.tyDelegate respondsToSelector:@selector(tableView:heightForRowAtIndexPath:)]) {
            return [tytableView.tyDelegate tableView:tytableView heightForRowAtIndexPath:indexPath];
        }
    }
    return 0;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    TYTableView *tytableView = (TYTableView *)tableView;
    
    id<TYTableViewDataSource> dataSource = tytableView.tyDataSource;
    id object = nil;

    if (dataSource && [dataSource respondsToSelector:@selector(tableView:objectForSectionAtSection:)]) {
        object = [dataSource tableView:tableView objectForSectionAtSection:section];
    }
    
    if (tytableView.tyDelegate && [tytableView.tyDelegate respondsToSelector:@selector(tableView:headerViewForSectionObject:atSection:)]) {
        if (object) {
            return [tytableView.tyDelegate tableView:tableView headerViewForSectionObject:object atSection:section];
        } else {
            return [tytableView.tyDelegate tableView:tableView viewForHeaderInSection:section];
        }
    } else {
        if(tytableView.tyDelegate && [tytableView.tyDelegate respondsToSelector:@selector(tableView:viewForHeaderInSection:)]) {
            return [tytableView.tyDelegate tableView:tableView viewForHeaderInSection:section];
        }
    }
    return nil;
}
-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    TYTableView *tytableView = (TYTableView *)tableView;
    
    id<TYTableViewDataSource> dataSource = tytableView.tyDataSource;
    id object = nil;
    
    if (dataSource && [dataSource respondsToSelector:@selector(tableView:objectForSectionAtSection:)]) {
        object = [dataSource tableView:tableView objectForSectionAtSection:section];
    }
    
    if (tytableView.tyDelegate && [tytableView.tyDelegate respondsToSelector:@selector(tableView:footerViewForSectionObject:atSection:)]) {
        if (object) {
            return [tytableView.tyDelegate tableView:tableView footerViewForSectionObject:object atSection:section];
        } else {
            return [tytableView.tyDelegate tableView:tableView viewForFooterInSection:section];
        }
    } else {
        if(tytableView.tyDelegate && [tytableView.tyDelegate respondsToSelector:@selector(tableView:viewForFooterInSection:)]) {
            return [tytableView.tyDelegate tableView:tableView viewForFooterInSection:section];
        }

    }
    return nil;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    TYTableView *tytableView = (TYTableView *)tableView;

    if (tytableView.tyDelegate && [tytableView.tyDelegate respondsToSelector:@selector(tableView:heightForHeaderInSection:)]) {
        return [tytableView.tyDelegate tableView:tableView heightForHeaderInSection:section];
    }
    return 0;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    TYTableView *tytableView = (TYTableView *)tableView;
    
    if (tytableView.tyDelegate && [tytableView.tyDelegate respondsToSelector:@selector(tableView:heightForFooterInSection:)]) {
        return [tytableView.tyDelegate tableView:tableView heightForFooterInSection:section];
    }
    return 0;
}
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}
@end
