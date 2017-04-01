//
//  UnsecuredLoanViewModel.h
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^selectedModelBlock) (id);

@interface UnsecuredLoanViewModel : NSObject <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView * tableView;
@property (nonatomic, strong) NSArray * models;
@property (nonatomic, strong) selectedModelBlock block;

@end
