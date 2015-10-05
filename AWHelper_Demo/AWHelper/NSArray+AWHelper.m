//
//  NSArray+AWHelper.m
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/24.
//  Copyright (c) 2015年 AlanWong. All rights reserved.
//

#import "NSArray+AWHelper.h"
#import "AWHelperPrivate.h"

@implementation NSArray (AWHelper)
-(NSArray *)subarrayFromIndex:(NSUInteger)index{
    if (index >= self.count) {
        return nil;
    }
    NSRange range = {index,self.count - index};
    return [self subarrayWithRange:range];
}

-(NSArray *)subarrayToIndex:(NSUInteger)index{
    if (index >= self.count) {
        return nil;
    }
    NSRange range = {0,index};
    return [self subarrayWithRange:range];
}

- (NSArray *)map:(id (^)(id value))handlerBlock {
    return [AWHelperPrivate aw_mapCollection:self block:handlerBlock];
}

- (NSArray *)filter:(BOOL (^)(id value))handlerBlock {
    return [AWHelperPrivate aw_filterCollection:self block:handlerBlock filterToggle:YES];
}

- (NSArray *)reject:(BOOL (^)(id value))handlerBlock {
    return [AWHelperPrivate aw_filterCollection:self block:handlerBlock filterToggle:NO];
}

- (NSArray *)flattenArray {
    NSMutableArray *result = [NSMutableArray array];
    for (id object in self) {
        if ([object isKindOfClass:[NSArray class]]) {
            [result addObjectsFromArray:[object flattenArray]];
        } else {
            [result addObject:object];
        }
    }
    return result;
}





@end
