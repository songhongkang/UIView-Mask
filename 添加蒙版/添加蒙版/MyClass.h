//
//  MyClass.h
//  添加蒙版
//
//  Created by 宋宏康 on 2018/8/14.
//  Copyright © 2018年 中施科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyClass : NSObject

- (void)printName;

@end

@interface MyClass(MyAddition)

@property(nonatomic, copy) NSString *name;

- (void)printName;

@end
