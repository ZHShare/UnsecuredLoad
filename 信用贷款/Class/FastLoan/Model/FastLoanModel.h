//
//  FastLoanModel.h
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "ParentModel.h"

@interface FastLoanModel : ParentModel

@property (nonatomic, copy) NSString * money;
@property (nonatomic, copy) NSString * poundageMoney;
@property (nonatomic, copy) NSString * date;

+ (FastLoanModel *)loadData;

@end
