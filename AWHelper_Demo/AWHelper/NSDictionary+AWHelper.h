//
//  NSDictionary+AWHelper.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/23.
//  Copyright (c) 2015年 AlanWong. All rights reserved.
//


#define IS_NULL_JSON_OBJ(obj) ((obj) == nil || [NSNull null] == (obj))

#import <Foundation/Foundation.h>

@interface NSDictionary (AWHelper)

- (BOOL)boolForKey:(NSString *)key;
- (BOOL)boolForKey:(NSString *)key defaultValue:(BOOL)value;

- (int)intForKey:(NSString *)key;
- (int)intForKey:(NSString *)key defaultValue:(int)value;

- (long long)int64ForKey:(NSString *)key;
- (long long)int64ForKey:(NSString *)key defaultValue:(long long)value;

- (unsigned long long)uint64ForKey:(NSString *)key;
- (unsigned long long)uint64ForKey:(NSString *)key defaultValue:(unsigned long long)value;

- (float)floatForKey:(NSString *)key;
- (float)floatForKey:(NSString *)key defaultValue:(float)value;

- (double)doubleForKey:(NSString *)key;
- (double)doubleForKey:(NSString *)key defaultValue:(double)value;

- (NSInteger)integerForKey:(NSString *)key;
- (NSInteger)integerForKey:(NSString *)key defaultValue:(NSInteger)value;

- (NSString *)stringForKey:(NSString *)key;
- (NSString *)stringForKey:(NSString *)key defaultValue:(NSString *)value;

- (id)objectNotNSNullForKey:(NSString *)key;

@end
