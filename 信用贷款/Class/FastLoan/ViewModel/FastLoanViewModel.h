//
//  FastLoanViewModel.h
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FastLoanModel.h"
typedef void (^submitBlock) (id);

@interface FastLoanViewModel : NSObject

@property (nonatomic, strong) FastLoanModel * model;

@property (nonatomic, strong) UILabel * moneyLabel;
@property (nonatomic, strong) UILabel * poundageLabel;
@property (nonatomic, strong) UILabel * dateLabel;
@property (nonatomic, strong) UIButton * borrowMoneyButton;

- (void)submitHandler: (submitBlock)block;

@end
