//
//  UnsecuredLoanController.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "UnsecuredLoanController.h"
#import "UnsecuredLoanView.h"
#import "UnsecuredLoanModel.h"
#import "UnsecuredLoanViewModel.h"

@interface UnsecuredLoanController ()
{
    UnsecuredLoanViewModel * _viewModel;
}
@end

@implementation UnsecuredLoanController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:@"信用贷款"];
    
    _viewModel.models = [UnsecuredLoanModel loadData];
    _viewModel.block = ^(UnsecuredLoanModel * model) {
        
        [Router pushControllerWithNamed:@"FastLoanController" andParams:@{@"model": model}];
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView {
    [super loadView];
    
    UnsecuredLoanView * unView = [[UnsecuredLoanView alloc]initWithFrame:self.view.frame];
    _viewModel = [UnsecuredLoanViewModel new];
    
    [self setView:unView];
    
    [unView setUnsecuredLoanViewModel:_viewModel];
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
