//
//  TYTableBaseRowModel.h
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/20.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TYTableBaseRowModel : NSObject

@property(nonatomic,copy)  NSString*itemIdentifier;
@property(nonatomic,strong)UIImage*itemImage;
@property(nonatomic,copy)  NSString*itemTitle;
@property(nonatomic,copy)  NSString*itemSubtitle;
@property(nonatomic,strong)UIImage*itemAccessoryImage;

-(instancetype)initWithImage:(UIImage *)image title:(NSString *)title subTitle:(NSString *)subTitle;

@end
