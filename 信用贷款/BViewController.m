//
//  BViewController.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "BViewController.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton * bt = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt setTitle:@"GGG" forState:UIControlStateNormal];
    [bt setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [bt setFrame:CGRectMake(20, 100, 200, 100)];
    [self.view addSubview:bt];
    
    [bt addTarget:self action:@selector(d) forControlEvents:UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)d {
    
    [Router pushControllerWithNamed:@"ViewController"];
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
