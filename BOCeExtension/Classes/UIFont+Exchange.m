//
//  UIFont+Exchange.m
//  Industrial
//
//  Created by 张文学 on 2020/8/31.
//  Copyright © 2020 boce. All rights reserved.
//

#import "UIFont+Exchange.h"

@implementation UIFont (Exchange)

#define YourUIScreen 414

+(void)load{
    //获取替换后的类方法
    Method newMethod = class_getClassMethod([self class], @selector(adjustFont:));
    //获取替换前的类方法
    Method method = class_getClassMethod([self class], @selector(systemFontOfSize:));
    //然后交换类方法
    method_exchangeImplementations(newMethod, method);
}

+(UIFont *)adjustFont:(CGFloat)fontSize{
    UIFont *newFont=nil;
    newFont = [UIFont adjustFont:fontSize * [UIScreen mainScreen].bounds.size.width/YourUIScreen];
    return newFont;
}

@end
