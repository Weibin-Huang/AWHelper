//
//  AWHelperPrivate.m
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/26.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import "AWHelperPrivate.h"

@implementation AWHelperPrivate
+(id)aw_filterCollection:(id)collection
                   block:(BOOL (^)(id))handleBlock
            filterToggle:(BOOL)toggle{
    Class class = [self classFromCollection:collection];
    id resule = [class new];
    for (id value in collection) {
        if (handleBlock(value) == toggle) {
            [resule addObject:value];
        }
    }
    return resule;
}

+(id)aw_mapCollection:(id)collection block:(id (^)(id))handleBlock{
    Class class = [self classFromCollection:collection];
    id result = [class new];
    for (id value in collection) {
        [result addObject:handleBlock(value)];
    }
    return result;
}

+(Class)classFromCollection:(id)collection{
    Class class;
    if ([collection isKindOfClass:[NSArray class]]) {
        class = [NSMutableArray class];
    }
    else if ([collection isKindOfClass:[NSSet class]]){
        class = [NSMutableSet class];
    }
    return class;
}
@end
