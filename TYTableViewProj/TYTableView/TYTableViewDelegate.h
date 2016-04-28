//
//  TYTableViewDelegate.h
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/21.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#ifndef TYTableViewDelegate_h
#define TYTableViewDelegate_h


#endif /* TYTableViewDelegate_h */
#import <UIKit/UIKit.h>

@class TYTableBaseSectionModel;


@protocol TYTableViewDelegate <UITableViewDelegate>

@optional
- (void)tableView:(UITableView *)tableView didSelectObject:(id)object atIndexPath:(NSIndexPath*)indexPath;
- (CGFloat)tableView:(UITableView *)tableView heightForRowWithObject:(id)object atIndexPath:(NSIndexPath*)indexPath;

- (UIView *)tableView:(UITableView *)tableView headerViewForSectionObject:(TYTableBaseSectionModel *)sectionObject atSection:(NSInteger)section;

@end