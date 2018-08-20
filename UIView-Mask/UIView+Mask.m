//
//  UIView+Mask.m
//  添加蒙版
//
//  Created by 宋宏康 on 2018/8/14.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "UIView+Mask.h"
#import <objc/runtime.h>
#import <Masonry/Masonry.h>
static char bgViewKey;



@implementation UIView (Mask)

- (void)showMask
{
    UIView *bgView = [[UIView alloc] init];
    bgView.backgroundColor = [UIColor clearColor];

    [self addSubview:bgView];
    self.maskView = bgView;
    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(0);
    }];
    
    UIView *contenViw = [[UIView alloc] init];
    contenViw.backgroundColor = [UIColor blackColor];
    contenViw.layer.cornerRadius = 5;
    contenViw.layer.masksToBounds= YES;
    [bgView addSubview:contenViw];
    [contenViw mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.centerY.mas_equalTo(bgView);
    }];
    
    UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    [indicatorView startAnimating];
    indicatorView.color = [UIColor whiteColor];
    [contenViw addSubview:indicatorView];
    
    [indicatorView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.mas_equalTo(20);
        make.bottom.right.mas_equalTo(-20);
    }];
    
    [self bringSubviewToFront:self.maskView];
}


- (void)hideMask
{
    [self.maskView removeFromSuperview];
}

- (void)setMaskView:(UIView *)maskView
{
    objc_setAssociatedObject(self, &bgViewKey, maskView, OBJC_ASSOCIATION_RETAIN);
}

- (UIView *)maskView
{
    return objc_getAssociatedObject(self, &bgViewKey);
}

@end
