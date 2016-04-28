//
//  ViewController.m
//  TYTableViewProj
//
//  Created by chengdonghai on 16/4/20.
//  Copyright © 2016年 天翼文化. All rights reserved.
//

#import "ViewController.h"
#import "OpenViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)pushToNext:(id)sender {
    OpenViewController *open = [OpenViewController new];
    [self.navigationController pushViewController:open animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
