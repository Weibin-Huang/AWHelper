//
//  NSDictionary+AWHelper.m
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/23.
//  Copyright (c) 2015年 AlanWong. All rights reserved.
//

#import "NSDictionary+AWHelper.h"

@implementation NSDictionary (AWHelper)

- (BOOL)boolForKey:(NSString *)key {
    return [self boolForKey:key defaultValue:NO];
}

- (BOOL)boolForKey:(NSString *)key defaultValue:(BOOL)value {
    id obj = [self objectForKey:key];
    if(IS_NULL_JSON_OBJ(obj)) return value;
    
    return [obj boolValue];
}

- (int)intForKey:(NSString *)key {
    return [self intForKey:key defaultValue:0];
}

- (int)intForKey:(NSString *)key defaultValue:(int)value {
    id obj = [self objectForKey:key];
    if(IS_NULL_JSON_OBJ(obj)) return value;
    
    return [obj intValue];
}

- (long long)int64ForKey:(NSString *)key {
    return [self int64ForKey:key defaultValue:0];
}

- (long long)int64ForKey:(NSString *)key defaultValue:(long long)value {
    id obj = [self objectForKey:key];
    if(IS_NULL_JSON_OBJ(obj)) return value;
    
    return [obj longLongValue];
}

- (unsigned long long)uint64ForKey:(NSString *)key {
    return [self uint64ForKey:key defaultValue:0];
}

- (unsigned long long)uint64ForKey:(NSString *)key defaultValue:(unsigned long long)value {
    id obj = [self objectForKey:key];
    if(IS_NULL_JSON_OBJ(obj)) return value;
    
    return [obj unsignedLongLongValue];
}

- (float)floatForKey:(NSString *)key {
    return [self floatForKey:key defaultValue:0.0];
}

- (float)floatForKey:(NSString *)key defaultValue:(float)value {
    id obj = [self objectForKey:key];
    if(IS_NULL_JSON_OBJ(obj)) return value;
    
    return [obj floatValue];
}

- (double)doubleForKey:(NSString *)key {
    return [self doubleForKey:key defaultValue:0.0];
}

- (double)doubleForKey:(NSString *)key defaultValue:(double)value {
    id obj = [self objectForKey:key];
    if(IS_NULL_JSON_OBJ(obj)) return value;
    
    return [obj doubleValue];
}

- (NSInteger)integerForKey:(NSString *)key {
    return [self integerForKey:key defaultValue:0];
}

- (NSInteger)integerForKey:(NSString *)key defaultValue:(NSInteger)value {
    id obj = [self objectForKey:key];
    if(IS_NULL_JSON_OBJ(obj)) return value;
    
    return [obj integerValue];
}

- (NSString *)stringForKey:(NSString *)key {
    return [self stringForKey:key defaultValue:nil];
}

- (NSString *)stringForKey:(NSString *)key defaultValue:(NSString *)value {
    id obj = [self objectForKey:key];
    
    if(IS_NULL_JSON_OBJ(obj) || ![obj isKindOfClass:[NSString class]]) return value;
    
    return obj;
}

- (id)objectNotNSNullForKey:(NSString *)key {
    id obj = [self objectForKey:key];
    if(IS_NULL_JSON_OBJ(obj)) return nil;
    
    return obj;
}

@end
