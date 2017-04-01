//
//  UnsecuredLoanModel.h
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "ParentModel.h"

@interface UnsecuredLoanModel : ParentModel

@property (nonatomic, copy) NSString * iconString;
@property (nonatomic, copy) NSString * iconTitleString;
@property (nonatomic, copy) NSString * redString;
@property (nonatomic, copy) NSString * subString;
@property (nonatomic, copy) NSString * subString2;

+ (NSArray *)loadData;


@end
