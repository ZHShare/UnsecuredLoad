//
//  MainNavigationController.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "MainNavigationController.h"

@interface MainNavigationController ()

@end

@implementation MainNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = false;
    
    [self setNav];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//方法一
- (void)setNav {
    // 导航栏背景颜色
    [self.navigationBar setBarTintColor:[UIColor colorWithRed:0xf6/255.0 green:0x4f/255.0 blue:0x47/255.0 alpha:1.000]];
    // 导航栏标题字体颜色
    [self.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:19],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    // 导航栏左右按钮字体颜色
    self.navigationBar.tintColor = [UIColor whiteColor];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
