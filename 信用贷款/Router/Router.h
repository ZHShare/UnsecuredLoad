//
//  Router.h
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Router : NSObject
/*
 *  获取当前栈顶控制器
 */
+ (UIViewController *)topViewController;

/*
 *  以present方式弹出控制器
 *  @aString 控制器名称字符串
 *  @params 正向传值参数 例，a传“123456”给b控制器下有一个叫 string的字符串 @{string: "123456"}
 */
+ (void)presentControllerWithNamed: (NSString *)aString
                         andParams: (NSDictionary *)params;

+ (void)presentControllerWithNamed: (NSString *)aString;

/*
 *  以push方式弹出控制器
 */
+ (void)pushControllerWithNamed: (NSString *)aString
                      andParams: (NSDictionary *)params;

+ (void)pushControllerWithNamed: (NSString *)aString;

@end
