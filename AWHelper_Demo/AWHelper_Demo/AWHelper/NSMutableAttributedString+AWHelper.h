//
//  NSMutableAttributedString+AWHelper.h
//  AWHelper_Demo
//
//  Created by AlanWong on 15/10/20.
//  Copyright © 2015年 AlanWong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSMutableAttributedString (AWHelper)
// Font
- (void)aw_setFont:(UIFont *)font;
- (void)aw_setFont:(UIFont *)font range:(NSRange)range;

// Color
- (void)aw_setTextColor:(UIColor *)color;
- (void)aw_setTextColor:(UIColor *)color range:(NSRange)range;

//TextAlignment
- (void)aw_setTextAlignment:(NSTextAlignment)alignment;
- (void)aw_setTextAlignment:(NSTextAlignment)alignment range:(NSRange)range;

// Underline
- (void)aw_setUnderline;
- (void)aw_setUnderlineWithRange:(NSRange)range;

// NSParagraphStyle
- (void)aw_setParagraphStyle:(NSParagraphStyle *)style;
- (void)aw_setParagraphStyle:(NSParagraphStyle *)style range:(NSRange)range;

// NSBaselineOffsetAttributeName
- (void)aw_setBaselineOffset:(CGFloat)fOffset;
- (void)aw_setBaselineOffset:(CGFloat)fOffset range:(NSRange)range;

// letter spacing
- (void)aw_setLetterSpacing:(CGFloat)fSpacing;
- (void)aw_setLetterSpacing:(CGFloat)fSpacing range:(NSRange)range;


@end
