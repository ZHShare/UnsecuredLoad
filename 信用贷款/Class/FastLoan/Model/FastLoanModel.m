//
//  FastLoanModel.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "FastLoanModel.h"

@implementation FastLoanModel

+ (FastLoanModel *)loadData {
    
    FastLoanModel * model = [FastLoanModel new];
    model.money = @"2000.00";
    model.poundageMoney = @"200.00元";
    model.date = @"14天";
    
    return model;
}

@end
