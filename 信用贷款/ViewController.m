//
//  ViewController.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageView=[[UIImageView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:imageView];
    
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [imageView.image drawInRect:CGRectMake(0, 0, imageView.frame.size.width, imageView.frame.size.height)];
    CGContextSetLineCap(UIGraphicsGetCurrentContext(), kCGLineCapRound);  //边缘样式
    CGContextSetLineWidth(UIGraphicsGetCurrentContext(), 1.0);  //线宽
    CGContextSetAllowsAntialiasing(UIGraphicsGetCurrentContext(), YES);
    CGContextSetRGBStrokeColor(UIGraphicsGetCurrentContext(), 1.0, 0.0, 0.0, 1.0);  //颜色
    CGContextBeginPath(UIGraphicsGetCurrentContext());
    CGContextMoveToPoint(UIGraphicsGetCurrentContext(), 100, 100);  //起点坐标
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), 200, 100);   //终点坐标
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), 300, 200);   //终点坐标
    CGContextAddLineToPoint(UIGraphicsGetCurrentContext(), 100, 300);   //终点坐标

    CGContextStrokePath(UIGraphicsGetCurrentContext());
    imageView.image=UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
 
    
    UIButton * bt = [UIButton init:^(UIButtonMaker *make) {
        
        make.setTitle(@"七尺男儿").forState(UIControlStateNormal);
    }];
    bt.frame = CGRectMake(20, 100, 200, 100);
    [bt setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:bt];
    
    [bt addTarget:self action:@selector(xyAction) forControlEvents:UIControlEventTouchUpInside];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)xyAction {
    
    [Router pushControllerWithNamed:@"UnsecuredLoanController"];
    
}


@end
