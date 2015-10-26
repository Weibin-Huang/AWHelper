//
//  NSMutableAttributedString+AWHelper.m
//  AWHelper_Demo
//
//  Created by AlanWong on 15/10/20.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import "NSMutableAttributedString+AWHelper.h"

@implementation NSMutableAttributedString (AWHelper)

- (void)aw_setFont:(UIFont *)font
{
    [self aw_setFont:font range:NSMakeRange(0, self.string.length)];
}

- (void)aw_setFont:(UIFont *)font range:(NSRange)range
{
    [self addAttributes:@{NSFontAttributeName: font} range:range];
}

- (void)aw_setTextColor:(UIColor *)color
{
    [self aw_setTextColor:color range:NSMakeRange(0, self.string.length)];
}

- (void)aw_setTextColor:(UIColor *)color range:(NSRange)range
{
    [self addAttributes:@{NSForegroundColorAttributeName: color} range:range];
}

- (void)aw_setTextAlignment:(NSTextAlignment)alignment
{
    [self aw_setTextAlignment:alignment range:NSMakeRange(0, self.string.length)];
}

- (void)aw_setTextAlignment:(NSTextAlignment)alignment range:(NSRange)range
{
    NSMutableParagraphStyle *style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    [style setAlignment:alignment];
    [self addAttributes:@{NSParagraphStyleAttributeName: style} range:range];
}

- (void)aw_setUnderline
{
    [self aw_setUnderlineWithRange:NSMakeRange(0, self.string.length)];
}

- (void)aw_setUnderlineWithRange:(NSRange)range
{
    [self addAttributes:@{NSUnderlineStyleAttributeName: @(NSUnderlineStyleSingle)} range:range];
}

- (void)aw_setParagraphStyle:(NSParagraphStyle *)style
{
    [self aw_setParagraphStyle:style range:NSMakeRange(0, self.string.length)];
}

- (void)aw_setParagraphStyle:(NSParagraphStyle *)style range:(NSRange)range
{
    [self addAttributes:@{NSParagraphStyleAttributeName: style} range:range];
}

// NSBaselineOffsetAttributeName
- (void)aw_setBaselineOffset:(CGFloat)fOffset
{
    [self aw_setBaselineOffset:fOffset range:NSMakeRange(0, self.string.length)];
}

- (void)aw_setBaselineOffset:(CGFloat)fOffset range:(NSRange)range
{
    [self addAttributes:@{NSBaselineOffsetAttributeName: @(fOffset)} range:range];
}


- (void)aw_setLetterSpacing:(CGFloat)fSpacing
{
    [self aw_setLetterSpacing:fSpacing range:NSMakeRange(0, self.string.length)];
}

- (void)aw_setLetterSpacing:(CGFloat)fSpacing range:(NSRange)range
{
    [self addAttribute:NSKernAttributeName
                 value:@(fSpacing)
                 range:range];
}


@end
