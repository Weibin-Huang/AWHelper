//
//  AWHelperPrivate.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/26.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AWHelperPrivate : NSObject
+(id)aw_filterCollection:(id)collection
                   block:(BOOL (^)(id value))handleBlock
            filterToggle:(BOOL)toggle;

+(id)aw_mapCollection:(id)collection
                block:(id (^)(id))handleBlock;
@end
