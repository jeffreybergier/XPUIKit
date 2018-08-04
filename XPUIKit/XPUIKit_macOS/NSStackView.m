//
//  NSStackView.m
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 03/08/2018.
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

#import "NSStackView.h"

@implementation NSStackView (XPUI)
- (CGFloat)xp_spacing;
{
    return [self spacing];
}
- (void)setXp_spacing:(CGFloat)newValue;
{
    [self setSpacing:newValue];
}
- (NSLayoutAttribute)xp_alignment;
{
    return [self xp_alignment];
}
- (void)setXp_alignment:(NSLayoutAttribute)newValue;
{
    [self setAlignment:newValue];
}
- (NSStackViewDistribution)xp_distribution;
{
    return [self distribution];
}
- (void)setXp_distribution:(NSStackViewDistribution)newValue;
{
    [self setDistribution:newValue];
}
- (NSUserInterfaceLayoutOrientation)xp_orientation;
{
    return [self orientation];
}
- (void)setXp_orientation:(NSUserInterfaceLayoutOrientation)newValue;
{
    [self setOrientation:newValue];
}
- (void)xp_insertArrangedSubview:(id<XPUIView> _Nonnull)view atIndex:(NSUInteger)stackIndex;
{
    [self insertArrangedSubview:view atIndex:stackIndex];
}
- (void)xp_addArrangedSubview:(id<XPUIView> _Nonnull)subview;
{
    [self addArrangedSubview:subview];
}
- (void)xp_removeArrangedSubview:(id<XPUIView> _Nonnull)subview;
{
    [self removeArrangedSubview:subview];
}
@end

@implementation XPUIStackViewCreator
+ (id<XPUIStackView> _Nonnull)createStackViewWithDelegate:(id<XPUIViewDelegate> _Nullable)delegate;
{
    id view = [[NSStackView alloc] init];
    [view xp_commonInit];
    [view setXp_delegate:delegate];
    return view;
}
@end
