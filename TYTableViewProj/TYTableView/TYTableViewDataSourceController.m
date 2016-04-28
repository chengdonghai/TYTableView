//
//  TYTableViewDataSourceController.m
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/21.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import "TYTableViewDataSourceController.h"
#import "TYTableBaseSectionModel.h"
#import "TYTableBaseRowModel.h"
#import "TYTableViewBaseCell.h"
#import "TYTableView.h"
#import <objc/runtime.h>
@implementation TYTableViewDataSourceController

- (instancetype)initWithSections:(NSArray *)sections
{
    self = [super init];
    if (self) {
        self.sections = sections;
    }
    return self;
}

-(TYTableBaseRowModel *)tableView:(UITableView *)tableView objectForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TYTableBaseSectionModel *sectionModel = nil;
    if ([self respondsToSelector:@selector(tableView:objectForSectionAtSection:)]) {
        sectionModel = [self tableView:tableView objectForSectionAtSection:indexPath.section];
    } else {
        if (self.sections.count > indexPath.section) {
            sectionModel = [self.sections objectAtIndex:indexPath.section];
        }
    }
    
    if (sectionModel.items.count > indexPath.row) {
        TYTableBaseRowModel *rowModel = [sectionModel.items objectAtIndex:indexPath.row];
        return rowModel;
    }
    
    return nil;
}

-(TYTableBaseSectionModel *)tableView:(UITableView *)tableView objectForSectionAtSection:(NSInteger)section
{
    if (self.sections.count > section) {
        TYTableBaseSectionModel *sectionModel = [self.sections objectAtIndex: section];
        return sectionModel;
    }
    return nil;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.sections count];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    id sectionModel = nil;
    if ([self respondsToSelector:@selector(tableView:objectForSectionAtSection:)]) {
        sectionModel = [self tableView:tableView objectForSectionAtSection:section];
    } else {
        if (self.sections.count > section) {
            sectionModel = [self.sections objectAtIndex:section];
        }
    }
    if (sectionModel &&[sectionModel isKindOfClass:[TYTableBaseSectionModel class]]) {
        TYTableBaseSectionModel *sectionModelTmp = (TYTableBaseSectionModel *)sectionModel;
        return [sectionModelTmp.items count];
    }
    
    return 0;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TYTableView *tytableView = (TYTableView *)tableView;
    TYTableBaseRowModel *rowModel = nil;
    if (tytableView.tyDataSource && [tytableView.tyDataSource respondsToSelector:@selector(tableView:objectForRowAtIndexPath:)]) {
        rowModel = [tytableView.tyDataSource tableView:tableView objectForRowAtIndexPath:indexPath];
    }
    if (rowModel == nil) {
        NSLog(@"row model 不能为空");
    }
    NSAssert(rowModel != nil, @"row model 不能为空");

    if (rowModel) {
        TYTableViewBaseCell *cell = [tableView dequeueReusableCellWithIdentifier:rowModel.itemIdentifier];
        
        if (!cell) {
            if (tytableView.tyDataSource && [tytableView.tyDataSource respondsToSelector:@selector(tableView:cellClassRowAtIndexPath:)]) {
                Class cellClass = [tytableView.tyDataSource tableView:tableView cellClassRowAtIndexPath:indexPath];
                cell = [[cellClass alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:rowModel.itemIdentifier];
            } else {
                cell = [[TYTableViewBaseCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:rowModel.itemIdentifier];
            }
        }
        [cell setContent:rowModel];
        return cell;
    }
    
    return nil;
}

@end
