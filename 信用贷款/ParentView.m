//
//  ParentView.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "ParentView.h"

@implementation ParentView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor colorWithRed:0xf5/255.0 green:0xf5/255.0 blue:0xf5/255.0 alpha:1.0];
        [self setupUI];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor colorWithRed:0xf5/255.0 green:0xf5/255.0 blue:0xf5/255.0 alpha:1.0];
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    
}

@end
