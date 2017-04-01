//
//  Router.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "Router.h"
#import "UIViewController+AllPropertys.h"
@implementation Router

+ (UIViewController *)topViewController {
    return [self topViewControllerWithRootViewController:[[UIApplication sharedApplication] keyWindow].rootViewController];
}

+ (void)pushControllerWithNamed:(NSString *)aString
                      andParams:(NSDictionary *)params {
    [self showControllerWithNamed:aString andParams:params isPush:true];
}

+ (void)pushControllerWithNamed:(NSString *)aString {
    return [self pushControllerWithNamed:aString andParams:nil];
}

+ (void)presentControllerWithNamed:(NSString *)aString
                         andParams:(NSDictionary *)params {
    [self showControllerWithNamed:aString andParams:params isPush:false];
}

+ (void)presentControllerWithNamed:(NSString *)aString {
    return [self presentControllerWithNamed:aString andParams:nil];
}


#pragma mark ==========

+ (void)showControllerWithNamed: (NSString *)aString
                      andParams: (NSDictionary *)params
                         isPush: (BOOL)aFlag {
    
    if (aString.length == 0) { return; }
    
    Class controllerClass = NSClassFromString(aString);
    if (controllerClass == nil) { return; }
    
    UIViewController * controller = [controllerClass new];
    if (params != nil) {
        
        NSArray * allKeys = [controller allPropertys];
        [params enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
            
            if ([allKeys containsObject:key]) {
                [controller setValue:obj forKey:key];
            }
            else {
                NSLog(@"%@ 没有定义的key:%@", controller, key);
            }
        }];
    }
    
    if (aFlag) {
        [[[self topViewController] navigationController] pushViewController:controller animated:true];
        return;
    }
    
    [[self topViewController] presentViewController:controller animated:true completion:nil];
}


+ (UIViewController *)topViewControllerWithRootViewController: (id)aController {
    
    if ([aController isKindOfClass:[UITabBarController class]]) {
        return [self topViewControllerWithRootViewController:[(UITabBarController *)aController selectedViewController]];
    }
    
    else if ([aController isKindOfClass:[UINavigationController class]]) {
        return [self topViewControllerWithRootViewController:[(UINavigationController *)aController visibleViewController]];
    }
    
    else if ([aController isKindOfClass:[UIViewController class]]) {
        if ([(UIViewController *)aController presentedViewController] != nil) {
            return [self topViewControllerWithRootViewController:[(UIViewController *)aController presentedViewController]];
        }
    }
    return aController;
}





@end
