//
//  TYTableBaseRowModel.m
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/20.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import "TYTableBaseRowModel.h"

@implementation TYTableBaseRowModel

-(instancetype)initWithImage:(UIImage *)image title:(NSString *)title subTitle:(NSString *)subTitle
{
    self = [super init];
    if (self) {
        self.itemImage = image;
        self.itemTitle = title;
        self.itemSubtitle = subTitle;
    }
    return self;
}

@end
