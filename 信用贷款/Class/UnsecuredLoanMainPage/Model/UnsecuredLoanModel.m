//
//  UnsecuredLoanModel.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "UnsecuredLoanModel.h"

@implementation UnsecuredLoanModel

+ (NSArray *)loadData {
    
    NSArray * icons = @[@"40", @"39"];
    NSArray * titles = @[@"急速贷", @"云易贷"];
    NSArray * redTitles = @[@"2.0459元", @"3-50万"];
    NSArray * subs = @[@"无抵押，无担保", @"纯信用，门槛低，额度高"];
    NSArray * subs2 = @[@"1分钟申请，10分钟放款", @"申请便捷， 审批高效"];
    
    NSInteger count = 2;
    NSMutableArray * models = [NSMutableArray arrayWithCapacity:2];
    for (int i = 0; i < count; i++) {
        
        UnsecuredLoanModel * model = [UnsecuredLoanModel new];
        model.iconString = icons[i];
        model.iconTitleString = titles[i];
        model.redString = redTitles[i];
        model.subString = subs[i];
        model.subString2 = subs2[i];
        [models addObject:model];
    }
    return models;
}

@end
