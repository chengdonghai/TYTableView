//
//  TYTableViewBaseCell.m
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/20.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import "TYTableViewBaseCell.h"
#import "TYTableBaseRowModel.h"

@implementation TYTableViewBaseCell


-(void)setContent:(TYTableBaseRowModel *)object
{
    self.textLabel.text = object.itemTitle;
    self.detailTextLabel.text = object.itemSubtitle;
    self.imageView.image = object.itemImage;
    self.accessoryView = [[UIImageView alloc] initWithImage:object.itemAccessoryImage];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
