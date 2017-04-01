//
//  FastLoanView.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "FastLoanView.h"

@implementation FastLoanView
{
    UILabel * _tipLabel;
    
    UIView  * _containtView;
    UILabel * _tipMoneyLabel;
    UILabel * _moneyLabel;
    UILabel * _tipPoundageLabel;
    UILabel * _poundageLabel;
    UILabel * _tipDateLabel;
    UILabel * _dateLabel;
    UIView  * _line;
    
    UIButton * _borrowMoneyButton;
    UILabel  * _tipBorrowMoneyLabel;
    
    BOOL _updated;
}

- (void)setFastLoanViewModel:(FastLoanViewModel *)fastLoanViewModel {
    
    _fastLoanViewModel = fastLoanViewModel;
    
    _fastLoanViewModel.moneyLabel = _moneyLabel;
    _fastLoanViewModel.poundageLabel = _poundageLabel;
    _fastLoanViewModel.dateLabel = _dateLabel;
    _fastLoanViewModel.borrowMoneyButton = _borrowMoneyButton;
}


- (void)setupUI {
    [super setupUI];
    
    _tipLabel = UILabel.maker( ^(UILabelMaker * make) {
       
        make.setBackgroundColor(UIColor.hex(@"#f7efda"));
        make.setTextAlignment(NSTextAlignmentCenter);
        make.setFont([UIFont systemFontOfSize:13]);
        make.setText(@"1分钟申请，10分钟到账");
        make.setTextColor(MainRedColor);
    });
    
    _containtView = UIView.white();
    
    _tipMoneyLabel = UILabel.maker(^(UILabelMaker * make) {
        
        make.setText(@"贷款金额（元）");
        make.setTextColor(UIColor.hex(@"#b2b2b2"));
        make.setTextAlignment(NSTextAlignmentCenter);
        make.setFont([UIFont systemFontOfSize:13]);
        make.setBackgroundColor(UIColor.clear());
    });
    
    
    _moneyLabel = UILabel.maker(^(UILabelMaker * make) {
        
        make.setTextColor(MainRedColor);
        make.setTextAlignment(NSTextAlignmentCenter);
        make.setFont([UIFont systemFontOfSize:30]);
        make.setBackgroundColor(UIColor.clear());
    });
    
    _line = UIView.line();
    
    _tipPoundageLabel = UILabel.maker(^(UILabelMaker * make) {
        
        make.setText(@"手续费");
        make.setTextColor(UIColor.hex(@"#b2b2b2"));
        make.setTextAlignment(NSTextAlignmentCenter);
        make.setFont([UIFont systemFontOfSize:13]);
        make.setBackgroundColor(UIColor.clear());
    });
   
    
    _poundageLabel = UILabel.maker(^(UILabelMaker * make) {
        
        make.setTextColor(UIColor.black());
        make.setTextAlignment(NSTextAlignmentCenter);
        make.setFont([UIFont systemFontOfSize:15]);
        make.setBackgroundColor(UIColor.clear());
    });
    
    _tipDateLabel = UILabel.maker(^(UILabelMaker * make) {
        
        make.setText(@"贷款期限");
        make.setTextColor(UIColor.hex(@"#b2b2b2"));
        make.setTextAlignment(NSTextAlignmentCenter);
        make.setFont([UIFont systemFontOfSize:13]);
        make.setBackgroundColor(UIColor.clear());
    });
    
    _dateLabel = UILabel.maker(^(UILabelMaker * make) {
        
        make.setTextColor(UIColor.black());
        make.setTextAlignment(NSTextAlignmentCenter);
        make.setFont([UIFont systemFontOfSize:15]);
        make.setBackgroundColor(UIColor.clear());
    });
    
    _borrowMoneyButton = UIButton.maker ( ^(UIButtonMaker * make) {
        
        make.setTitle(@"立即借款").forState(UIControlStateNormal);
        make.setBackgroundColor(MainRedColor).forState(UIControlStateNormal);
        make.setTitleColor(UIColor.white()).forState(UIControlStateNormal);
        make.setFont([UIFont systemFontOfSize:18]);
        make.setCornerRadius(5);
    });
    
    
    _tipBorrowMoneyLabel =  UILabel.maker(^(UILabelMaker * make) {
        
        make.setText(@"贷款发放时一次性扣收手续费");
        make.setTextColor(UIColor.hex(@"#b2b2b2"));
        make.setTextAlignment(NSTextAlignmentLeft);
        make.setFont([UIFont systemFontOfSize:13]);
        make.setBackgroundColor(UIColor.clear());
    });
    
    
    self.addSubviews(@[_tipLabel, _containtView, _tipBorrowMoneyLabel, _borrowMoneyButton]);
    _containtView.addSubviews(@[_tipMoneyLabel, _moneyLabel, _line, _tipPoundageLabel, _poundageLabel, _tipDateLabel, _dateLabel]);
    
    [self setNeedsUpdateConstraints];
}

- (void)updateConstraints {
    [super updateConstraints];
    
    if (_updated) { return; }
    
    __weak typeof(self) weakSelf = self;
    [_tipLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat height = SCREEN_HEIGHT * 64 / 940;
        
        make.height.mas_equalTo(height);
        make.left.mas_equalTo(weakSelf.mas_left);
        make.right.mas_equalTo(weakSelf.mas_right);
        make.top.mas_equalTo(weakSelf.mas_top).offset(64);
    }];
    
    [_containtView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat height = SCREEN_HEIGHT * 316 / 940;
        
        make.height.mas_equalTo(height);
        make.left.mas_equalTo(weakSelf.mas_left);
        make.right.mas_equalTo(weakSelf.mas_right);
        make.top.mas_equalTo(_tipLabel.mas_bottom);
    }];
    
    [_line mas_makeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat height = SCREEN_HEIGHT * 80 / 940;
        CGFloat bottomOffset = SCREEN_HEIGHT * 20 / 940;
        
        make.height.mas_equalTo(height);
        make.bottom.mas_equalTo(_containtView.mas_bottom).offset(-bottomOffset);
        make.width.mas_equalTo(1);
        make.centerX.equalTo(_containtView);
    }];
    
    [_poundageLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat height = SCREEN_HEIGHT * 42 / 940;
        
        make.height.mas_equalTo(height);
        make.bottom.mas_equalTo(_line.mas_bottom);
        make.left.mas_equalTo(_containtView.mas_left);
        make.right.mas_equalTo(_line.mas_left);
    }];
    
    [_dateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.height.mas_equalTo(_poundageLabel.mas_height);
        make.bottom.mas_equalTo(_line.mas_bottom);
        make.left.mas_equalTo(_line.mas_right);
        make.right.mas_equalTo(_containtView.mas_right);
    }];
    
    [_tipPoundageLabel mas_makeConstraints:^(MASConstraintMaker *make) {
       
        CGFloat height = SCREEN_HEIGHT * 39 / 940;

        make.height.mas_equalTo(height);
        make.bottom.mas_equalTo(_poundageLabel.mas_top);
        make.left.mas_equalTo(_containtView.mas_left);
        make.right.mas_equalTo(_line.mas_left);
    }];
    
    [_tipDateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.height.mas_equalTo(_tipPoundageLabel.mas_height);
        make.bottom.mas_equalTo(_dateLabel.mas_top);
        make.left.mas_equalTo(_line.mas_right);
        make.right.mas_equalTo(_containtView.mas_right);
    }];
    
    
    [_moneyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat bottomOffset = SCREEN_HEIGHT * 59 / 940;
        CGFloat height = SCREEN_HEIGHT * 63 / 940;
        
        make.bottom.mas_equalTo(_line.mas_top).offset(-bottomOffset);
        make.width.mas_equalTo(_containtView.mas_width);
        make.centerX.equalTo(_containtView);
        make.height.mas_equalTo(height);
    }];
    
    [_tipMoneyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat height = SCREEN_HEIGHT * 60 / 940;
        
        make.bottom.mas_equalTo(_moneyLabel.mas_top);
        make.width.mas_equalTo(_containtView.mas_width);
        make.centerX.equalTo(_containtView);
        make.height.mas_equalTo(height);
    }];
    
    [_borrowMoneyButton mas_makeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat width = SCREEN_WIDTH * 468 / 530;
        CGFloat height = SCREEN_HEIGHT * 70 / 940;
        CGFloat topOffset = SCREEN_HEIGHT * 50 / 940;
        
        make.size.mas_equalTo(CGSizeMake(width, height));
        make.centerX.equalTo(weakSelf);
        make.top.mas_equalTo(_containtView.mas_bottom).offset(topOffset);
    }];
    
    [_tipBorrowMoneyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat height = SCREEN_HEIGHT * 68 / 940;
        
        make.height.mas_equalTo(height);
        make.width.mas_equalTo(_borrowMoneyButton.mas_width);
        make.left.mas_equalTo(_borrowMoneyButton.mas_left);
        make.top.mas_equalTo(_borrowMoneyButton.mas_bottom);
    }];
    
    _updated = true;
}

@end
