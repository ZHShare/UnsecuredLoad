//
//  UnsecuredLoanViewModel.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "UnsecuredLoanViewModel.h"
#import "UnsecuredLoanCell.h"

static NSString * cellIdenfifier = @"unsecuredLoanCell";
@implementation UnsecuredLoanViewModel
{
    CGFloat _rowHeight;
}

- (void)setTableView:(UITableView *)tableView {
    
    _tableView = tableView;
    [_tableView setDelegate:self];
    [_tableView setDataSource:self];

    [_tableView registerClass:[UnsecuredLoanCell class] forCellReuseIdentifier:cellIdenfifier];
}

- (void)setModels:(NSArray *)models {
    
    _models = models;
    
    __weak __typeof(_tableView) weakTableView = _tableView;
    dispatch_async(dispatch_get_main_queue(), ^{
        [(UITableView *)weakTableView reloadData];
    });
}

#pragma mark ------ TableView代理
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _models.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UnsecuredLoanCell * cell = [tableView dequeueReusableCellWithIdentifier:cellIdenfifier];
    cell.model = _models[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (_rowHeight) {
        return _rowHeight;
    }
    
    _rowHeight = SCREEN_HEIGHT*174/940;
    return _rowHeight;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:true];
    if (self.block) {
        self.block(_models[indexPath.row]);
    }
}

@end
