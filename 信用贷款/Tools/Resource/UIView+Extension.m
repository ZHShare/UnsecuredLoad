//
//  UIView+Extension.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (void)addSubviews:(NSArray *)views {
    
    for (id v in views) {
        
        if (![v isKindOfClass:[UIView class]]) { continue; }
        [self addSubview:v];
    }
    
}

- (void (^)(UIView *))addSubview {
   
    return ^(UIView *sub) {
        
        [self addSubview:sub];
        return;
    };
}

- (void (^)(NSArray *))addSubviews {
    
    return ^(NSArray * subs) {
        
        [self addSubviews:subs];
        return;
    };
}


+ (UIView *(^)())white {
    
    return ^UIView * () {
      
        UIView * view = [UIView new];
        view.backgroundColor = UIColor.white();
        return view;
    };
}
+ (UIView *(^)())line {
    
    return ^UIView * () {
        
        UIView * view = [UIView new];
        view.backgroundColor = UIColor.hex(@"#b2b2b2");
        return view;
    };
}

+ (UIView *(^)(UIColor *))withColor {
    
    return ^UIView * (UIColor * color) {
        
        UIView * view = [UIView new];
        view.backgroundColor = color;
        return view;
    };
}


@end
