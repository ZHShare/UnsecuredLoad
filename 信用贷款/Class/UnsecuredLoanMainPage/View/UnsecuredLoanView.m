//
//  UnsecuredLoanView.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "UnsecuredLoanView.h"

@implementation UnsecuredLoanView
{
    UITableView * _tableView;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setUnsecuredLoanViewModel:(UnsecuredLoanViewModel *)unsecuredLoanViewModel {
    
    _unsecuredLoanViewModel = unsecuredLoanViewModel;
    _unsecuredLoanViewModel.tableView = _tableView;
}

/// 初始化UI
- (void)setupUI {
    
    _tableView = [[UITableView alloc] initWithFrame:self.frame style:UITableViewStylePlain];
    [_tableView setBackgroundColor:[UIColor colorWithRed:0xf5/255.0 green:0xf5/255.0 blue:0xf5/255.0 alpha:1.0]];
    [_tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self addSubview:_tableView];
    
    __weak typeof(self) weakSelf = self;
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.size.mas_equalTo(weakSelf.frame.size);
        make.top.mas_equalTo(weakSelf.mas_top).offset(64);
        make.left.mas_equalTo(weakSelf.mas_left);
    }];
}


@end
