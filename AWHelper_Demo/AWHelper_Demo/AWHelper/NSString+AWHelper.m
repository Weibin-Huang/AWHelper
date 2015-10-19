//
//  NSString+AWHelper.m
//  AWHelper_Demo
//
//  Created by AlanWong on 15/10/20.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import "NSString+AWHelper.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (AWHelper)
- (NSString *)aw_MD5DigestKey {
    if(self == nil){
        return nil;
    }
    
    const char* str = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(str, (int)strlen(str), result);
    
    NSString *key = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
                     result[0], result[1], result[2], result[3], result[4], result[5], result[6], result[7],
                     result[8], result[9], result[10], result[11], result[12], result[13], result[14], result[15]];
    
    return key;
}
@end
