//
//  NSTextField.m
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 02/08/2018.
//
//  MIT License
//
//  Copyright (c) 2018 Jeffrey Bergier
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
//

#import "NSTextField.h"

@implementation NSTextField (XPUI)

@dynamic xp_singleLineMode;

- (BOOL)xp_singleLineMode;
{
    return [self usesSingleLineMode];
}

- (void)setXp_singleLineMode:(BOOL)newValue;
{
    [self setUsesSingleLineMode:newValue];
}

- (NSAttributedString* _Nullable)xp_attributedString;
{
    return [self attributedStringValue];
}

- (void)setXp_attributedString:(NSAttributedString *)value;
{
    [self setAttributedStringValue:value];
}

@end

@implementation XPUILabelCreator
+ (NSView<XPUILabel>* _Nonnull)createLabelWithDelegate:(id<XPUIViewDelegate> _Nullable)delegate;
{
    NSTextField<XPUILabel>* view = [[NSTextField alloc] init];
    [view xp_commonInit];
    [view setXp_delegate:delegate];
    [view setContentCompressionResistancePriority:NSLayoutPriorityDefaultLow forOrientation:NSLayoutConstraintOrientationHorizontal];
    [view setContentCompressionResistancePriority:NSLayoutPriorityDefaultLow forOrientation:NSLayoutConstraintOrientationVertical];
    [view setContentHuggingPriority:NSLayoutPriorityDefaultLow forOrientation:NSLayoutConstraintOrientationHorizontal];
    [view setContentHuggingPriority:NSLayoutPriorityDefaultLow forOrientation:NSLayoutConstraintOrientationVertical];
    [view setEditable:NO];
    [view setBezeled:NO];
    [view setDrawsBackground:YES];
//    [view setBackgroundColor:[NSColor clearColor]];
    return view;
}
@end
