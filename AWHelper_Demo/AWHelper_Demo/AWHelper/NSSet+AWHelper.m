//
//  NSSet+AWHelper.m
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/29.
//  Copyright (c) 2015年 AlanWong. All rights reserved.
//

#import "NSSet+AWHelper.h"
#import "AWHelperPrivate.h"
@implementation NSSet (AWHelper)
- (NSSet *)map:(id (^)(id value))handlerBlock {
    return [AWHelperPrivate aw_mapCollection:self block:handlerBlock];
}

- (NSSet *)filter:(BOOL (^)(id value))handlerBlock {
    return [AWHelperPrivate aw_filterCollection:self block:handlerBlock filterToggle:YES];
}

- (NSSet *)reject:(BOOL (^)(id value))handlerBlock {
    return [AWHelperPrivate aw_filterCollection:self block:handlerBlock filterToggle:NO];
}
@end
