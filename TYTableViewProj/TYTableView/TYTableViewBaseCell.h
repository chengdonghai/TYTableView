//
//  TYTableViewBaseCell.h
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/20.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TYTableBaseRowModel;

@interface TYTableViewBaseCell : UITableViewCell

-(void)setContent:(TYTableBaseRowModel *)object;

@end
