//
//  MyClass.m
//  添加蒙版
//
//  Created by 宋宏康 on 2018/8/14.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import "MyClass.h"

#import "MyClass.h"

@implementation MyClass

- (void)printName
{
    NSLog(@"%@",@"MyClass");
}

@end

@implementation MyClass(MyAddition)

- (void)printName
{
    NSLog(@"%@",@"MyAddition");
}

@end
