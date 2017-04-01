//
//  ParentModel.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "ParentModel.h"

@implementation ParentModel

- (void)setValue:(id)value forKey:(NSString *)key{
    return [super setValue:value forKey:key];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    NewKTLog(@"%@ none key:%@",self,key);
}

@end
