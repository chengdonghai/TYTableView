//
//  TYTableView.h
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/20.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import <UIKit/UIKit.h>


@class TYTableBaseRowModel;
@class TYTableBaseSectionModel;
@protocol TYTableViewDelegate;
@protocol TYTableViewDataSource;

@interface TYTableView : UITableView

@property(nonatomic,assign) id<TYTableViewDelegate> tyDelegate;
@property(nonatomic,assign) id<TYTableViewDataSource> tyDataSource;
@end
