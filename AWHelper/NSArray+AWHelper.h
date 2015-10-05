//
//  NSArray+AWHelper.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/24.
//  Copyright (c) 2015年 AlanWong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (AWHelper)

- (NSArray *)subarrayFromIndex:(NSUInteger)index;
- (NSArray *)subarrayToIndex:(NSUInteger)index;

- (NSArray *)map:(id(^)(id value))handleBlock;
- (NSArray *)filter:(BOOL (^)(id value))handleBlock;
- (NSArray *)reject:(BOOL (^)(id value))handleBlock;
- (NSArray *)flattenArray;
@end
