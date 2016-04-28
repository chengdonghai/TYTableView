//
//  TYTableBaseSectionModel.m
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/20.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import "TYTableBaseSectionModel.h"

@implementation TYTableBaseSectionModel

- (instancetype)initWithItemArray:(NSMutableArray *)items;
{
    self = [super init];
    if (self) {
        self.items = items;
    }
    return self;
}
@end
