//
//  FastLoanController.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "FastLoanController.h"
#import "FastLoanViewModel.h"
#import "FastLoanView.h"
#import "FastLoanModel.h"

@interface FastLoanController ()

@end

@implementation FastLoanController
{
    FastLoanViewModel * _viewModel;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationItem setTitle:_model.iconTitleString];
    
    // 加载数据
    _viewModel.model = [FastLoanModel loadData];
    [_viewModel submitHandler:^(id s) {
        NewKTLog(@"%@立即借款",s);
    }];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)loadView {
    [super loadView];
    
    _viewModel = [FastLoanViewModel new];
    
    FastLoanView *sView = [[FastLoanView alloc] initWithFrame:self.view.frame];
    sView.fastLoanViewModel = _viewModel;
    
    [self setView:sView];
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
