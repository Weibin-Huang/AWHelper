//
//  AWRuntimeHelper.m
//  AWHelper_Demo
//
//  Created by AlanWong on 15/9/27.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import "AWRuntimeHelper.h"
#include <execinfo.h>

@implementation AWRuntimeHelper
+(void)aw_printCallStackWithCount:(NSUInteger)count{
    void * callStack[count];
    int i ,frames = backtrace(callStack, (int)count);
    char ** strs = backtrace_symbols(callStack, frames);
    for (i = 0; i < frames; ++i) {
        NSLog(@"%@",[NSString stringWithCString:strs[i] encoding:NSUTF8StringEncoding]);
    }
    free(strs);
}

@end
