//
//  FastLoanViewModel.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "FastLoanViewModel.h"

@implementation FastLoanViewModel
{
    submitBlock _bblock;
}
- (void)setModel:(FastLoanModel *)model {
    
    _model = model;
    
    [_moneyLabel setText:_model.money];
    [_poundageLabel setText:_model.poundageMoney];
    [_dateLabel setText:_model.date];
}

- (void)submitHandler:(submitBlock)block {
    
    _bblock = block;
}

- (void)setBorrowMoneyButton:(UIButton *)borrowMoneyButton {
    
    _borrowMoneyButton = borrowMoneyButton;
    
    [_borrowMoneyButton addTarget:self action:@selector(borrow:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)borrow: (UIButton *)sendeer {
    
    if (_bblock) {
        _bblock(@"借款");
    }
}

@end
