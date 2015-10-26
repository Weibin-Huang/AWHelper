//
//  NSObject+AWHelper.m
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/29.
//  Copyright (c) 2015年 AlanWong. All rights reserved.
//

#import "NSObject+AWHelper.h"

@implementation NSObject (AWHelper)
- (void)aw_performBlock:(void (^)(void))block afterDelay:(NSTimeInterval)delay
{
    block = [block copy];
    [self performSelector:@selector(runBlockAfterDelay:) withObject:block afterDelay:delay];
}

- (void)runBlockAfterDelay:(void (^)(void))block
{
    if (block != nil)
        block();
}
@end
