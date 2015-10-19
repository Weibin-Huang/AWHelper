//
//  AWHelperPrivate.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/26.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface AWHelperPrivate : NSObject
/**
 *  filter objects from a collection
 *
 *  @param collection  Original collection
 *  @param handleBlock Condition block,return a bool value
 *  @param toggle      the handleBlock'result You want
 *
 *  @return a collection contain objects which match condition
 */
+(id)aw_filterCollection:(id)collection
                   block:(BOOL (^)(id value))handleBlock
            filterToggle:(BOOL)toggle;

/**
 *  map collection
 *
 *  @param collection  Original collection
 *  @param handleBlock handle object in original collection,retun a new object
 *
 *  @return a collection contain objects which creat by handleBlock
 */
+(id)aw_mapCollection:(id)collection
                block:(id (^)(id))handleBlock;
@end
