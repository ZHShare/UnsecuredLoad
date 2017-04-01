//
//  UnsecuredLoanCell.m
//  信用贷款
//
//  Created by YE on 2017/3/29.
//  Copyright © 2017年 Eter. All rights reserved.
//

#import "UnsecuredLoanCell.h"

@implementation UnsecuredLoanCell
{
    UIImageView * _icon;
    
    UILabel * _iconLabel;
    UILabel * _titleRedLabel;
    UILabel * _subLabel;
    UILabel * _subLabel2;
    
    UIView  * _line;
    UIView  * _containView;
    
    BOOL _updated;
}

- (void)setModel:(UnsecuredLoanModel *)model {
    
    _model = model;
    
    [_icon setImage:[UIImage imageNamed:model.iconString]];
    [_iconLabel setText:model.iconTitleString];
    [_titleRedLabel setText:model.redString];
    [_titleRedLabel formatterLast]; // 缩小最后一个字
    
    [_subLabel setText:model.subString];
    [_subLabel2 setText:model.subString2];
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupUI];
    }
    
    return self;
}
- (void)setupUI {
    [self setFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT*174/940)];
    [self setBackgroundColor:[UIColor colorWithRed:0xf5/255.0 green:0xf5/255.0 blue:0xf5/255.0 alpha:1.0]];
    
    _icon = [UIImageView new];
    
    _iconLabel = UILabel.maker(^(UILabelMaker * make) {
        
        make.setTextColor(UIColor.hex(@"#676767"));
        make.setFont([UIFont systemFontOfSize:15]);
        make.setTextAlignment(NSTextAlignmentCenter);
    });
    
    
    _titleRedLabel = UILabel.maker(^(UILabelMaker * make) {
        
        make.setTextColor(UIColor.hex(@"#ff625a"));
        make.setFont([UIFont systemFontOfSize:20]);
        make.setTextAlignment(NSTextAlignmentLeft);
    });
   
    
    _subLabel = UILabel.maker(^(UILabelMaker * make) {
        
        make.setTextColor(UIColor.hex(@"#a9a9a9"));
        make.setFont([UIFont systemFontOfSize:12]);
        make.setTextAlignment(NSTextAlignmentLeft);
    });
 
    
    _subLabel2 = UILabel.maker(^(UILabelMaker * make) {
        
        make.setTextColor(UIColor.hex(@"#a9a9a9"));
        make.setFont([UIFont systemFontOfSize:12]);
        make.setTextAlignment(NSTextAlignmentLeft);
    });
    
    
    _line = UIView.withColor(UIColor.hex(@"#f5f5f5"));
    
    _containView = UIView.white();
    
    [self addSubview:_containView];
    _containView.addSubviews(@[_icon, _iconLabel, _titleRedLabel, _subLabel, _subLabel2, _line]);
    
    [self setNeedsUpdateConstraints];
}

- (void)updateConstraints {
    [super updateConstraints];
    
    if (_updated) { return; }
    
    [_containView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat topOffset = SCREEN_HEIGHT * 20 / 940;
        
        make.top.mas_equalTo(self.mas_top).mas_offset(topOffset);
        make.bottom.mas_equalTo(self.mas_bottom);
        make.left.mas_equalTo(self.mas_left);
        make.right.mas_equalTo(self.mas_right);
    }];
    
    [_line mas_makeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat height = SCREEN_HEIGHT * 94 / 940;
        CGFloat leftOffset = SCREEN_WIDTH * 160 / 530;
        
        make.left.mas_equalTo(_containView.mas_left).mas_equalTo(leftOffset);
        make.centerY.mas_equalTo(_containView.mas_centerY);
        make.width.mas_equalTo(1);
        make.height.mas_equalTo(height);
    }];
    
    [_iconLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat bottomOffset = SCREEN_HEIGHT * 23 / 940;
        CGFloat height = SCREEN_HEIGHT * 30 / 940;
        
        make.height.mas_equalTo(height);
        make.left.mas_equalTo(_containView.mas_left);
        make.right.mas_equalTo(_line.mas_left);
        make.bottom.mas_equalTo(_containView.mas_bottom).mas_offset(-bottomOffset);
    }];
    
    [_icon mas_makeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat bottomOffset = SCREEN_HEIGHT * 10 / 940;
        
        make.centerX.equalTo(_iconLabel);
        make.bottom.equalTo(_iconLabel.mas_top).offset(-bottomOffset);
    }];
    
    [_titleRedLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat topOffset = SCREEN_HEIGHT * 23 / 940;
        CGFloat leftOffset = SCREEN_WIDTH * 39 / 530;
        CGFloat height = SCREEN_HEIGHT * 43 / 940;
        
        make.height.mas_equalTo(height);
        make.top.equalTo(_containView.mas_top).offset(topOffset);
        make.left.equalTo(_line.mas_right).offset(leftOffset);
        make.right.equalTo(_containView.mas_right);
    }];
    
    [_subLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        CGFloat height = SCREEN_HEIGHT * 33 / 940;
        
        make.left.mas_equalTo(_titleRedLabel.mas_left);
        make.right.mas_equalTo(_containView.mas_right);
        make.top.mas_equalTo(_titleRedLabel.mas_bottom);
        make.height.mas_equalTo(height);
    }];
    
    [_subLabel2 mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.mas_equalTo(_titleRedLabel.mas_left);
        make.right.mas_equalTo(_containView.mas_right);
        make.top.mas_equalTo(_subLabel.mas_bottom);
        make.height.mas_equalTo(_subLabel.mas_height);
    }];
    
    _updated = true;
}

@end
