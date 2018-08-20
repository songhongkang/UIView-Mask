//
//  ViewController.m
//  添加蒙版
//
//  Created by 宋宏康 on 2018/8/14.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "UIView+Mask.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self.view showMask];

    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(0);
    }];
    
    
    [self performSelector:@selector(testFunc) withObject:nil afterDelay:5];
}


- (void)testFunc
{
    [self.view hideMask];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
