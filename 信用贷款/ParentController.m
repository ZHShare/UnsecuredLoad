//
//  ParentController.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "ParentController.h"

@interface ParentController ()

@end

@implementation ParentController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = false;
    
    [self configBackItem];
    
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)isHaveNavigationContrller {
    
    if (self.navigationController == nil) {
        return false;
    }
    return true;
}

- (BOOL)isRoot {
    
    NSArray * viewControllers = [self.navigationController viewControllers];
    if (viewControllers.count == 1) { return true; }
    
    return false;
}

- (void)configBackItem {
    
    if ([self isHaveNavigationContrller] == false) { return; }
    if ([self isRoot]) { return; }
    
    UIBarButtonItem * item = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"18"] style:UIBarButtonItemStyleDone target:self.navigationController action:@selector(popViewControllerAnimated:)];
    item.tintColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = item;
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
