//
//  TYTableViewDataSourceController.h
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/21.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TYTableViewDataSource.h"

@interface TYTableViewDataSourceController : NSObject<TYTableViewDataSource>

@property(nonatomic,strong) NSArray *sections;

// 初始化
- (instancetype)initWithSections:(NSArray *)sections;
/**
 *  @brief 移除row
 *
 *  @param indexPath
 */
- (void)removeObjectAtIndexPath:(NSIndexPath *)indexPath;
@end
