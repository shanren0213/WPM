//
//  WPMCalendarCell.m
//  WPM
//
//  Created by Dream on 2017/10/25.
//  Copyright © 2017年 linfun. All rights reserved.
//

#import "WPMCalendarCell.h"

@implementation WPMCalendarCell

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        // 标识当天的背景圈圈
        [self addSubview:self.todayCircle];
        // 当天的日期数字
        [self addSubview:self.todayLabel];
        
        
        // 提醒标记点
        //        [self addSubview:self.pointView];
        
    }
    
    return self;
}

- (UIView *)todayCircle {
    if (_todayCircle == nil) {
        _todayCircle = [[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 0.8 * SELF_HEIGHT, 0.8 * SELF_HEIGHT)];
        _todayCircle.center = CGPointMake(0.5 * SELF_WIDTH, 0.5 * SELF_HEIGHT);
        _todayCircle.layer.cornerRadius = 0.5 * _todayCircle.frame.size.width;
    }
    return _todayCircle;
}

- (UILabel *)todayLabel {
    if (_todayLabel == nil) {
        _todayLabel = [[UILabel alloc] initWithFrame:self.bounds];
        _todayLabel.backgroundColor = [UIColor colorWithWhite:1  alpha:0.1];
        _todayLabel.textAlignment = NSTextAlignmentCenter;
        _todayLabel.font = [UIFont fontWithName:@"PingFang SC" size:15];
    }
    return _todayLabel;
}

- (UIView *)pointView {
    if (_pointView == nil) {
        _pointView = [[UIView alloc] initWithFrame:CGRectMake(SELF_WIDTH - 4 - 2, 2, 4, 4)];
        _pointView.layer.cornerRadius = 2;
        _pointView.backgroundColor = [UIColor redColor];
    }
    return _pointView;
}

@end
