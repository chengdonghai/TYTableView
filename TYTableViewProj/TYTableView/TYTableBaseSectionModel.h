//
//  TYTableBaseSectionModel.h
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/20.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TYTableBaseSectionModel : NSObject
@property(nonatomic, copy) NSString *headerTitle; // UITableDataSource 协议中的 titleForHeaderInSection 方法可能会用到
@property (nonatomic, copy) NSString *footerTitle; // UITableDataSource 协议中的 titleForFooterInSection 方法可能会用到
@property (nonatomic, retain) NSMutableArray *items;

- (instancetype)initWithItemArray:(NSMutableArray *)items;
@end
