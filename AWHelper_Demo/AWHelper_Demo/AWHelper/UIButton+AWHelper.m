//
//  UIButton+AWHelper.m
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/23.
//  Copyright (c) 2015年 AlanWong. All rights reserved.
//

#import "UIButton+AWHelper.h"

@implementation UIButton (AWHelper)
- (void)aw_setBackgroundColor:(UIColor *)color forState:(UIControlState)state{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context,
                                   [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [self setBackgroundImage:img forState:state];
}

@end
