//
//  XPUIView_macOS.m
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

#import "XPUIView_macOS.h"

@interface XPUIView_macOS ()
@property (strong, nonatomic) NSLayoutGuide* __xp_layoutGuide;
@end

@implementation XPUIView_macOS

@dynamic xp_layoutGuide, xp_layer;

- (CALayer *)xp_layer;
{
    return [self layer];
}

- (NSLayoutGuide* _Nonnull)xp_layoutGuide;
{
    return [[self layoutGuides] firstObject];
}

- (void)xp_addSubview:(id<XPUIView> _Nonnull)view;
{
    [self addSubview:view];
}

+ (BOOL)requiresConstraintBasedLayout;
{
    return YES;
}

- (void)viewDidMoveToWindow;
{
    [super viewDidMoveToWindow];
    [self setWantsLayer:YES];

    NSLayoutGuide* lg = [[NSLayoutGuide alloc] init];
    [self set__xp_layoutGuide:lg];
    [self addLayoutGuide:lg];
    [NSLayoutConstraint activateConstraints: @[
                                               [[self centerXAnchor] constraintEqualToAnchor:[lg centerXAnchor]],
                                               [[self centerYAnchor] constraintEqualToAnchor:[lg centerYAnchor]],
                                               [[self heightAnchor] constraintEqualToAnchor:[lg heightAnchor]],
                                               [[self widthAnchor] constraintEqualToAnchor:[lg widthAnchor]]
                                               ]];
    [[self xp_delegate] viewDidMoveToPresentation:self];
}

- (void)layout;
{
    [super layout];
    NSLog(@"%@", NSStringFromRect([[self __xp_layoutGuide] frame]));
    [[self xp_delegate] viewDidLayout:self];
}

@end

@implementation XPUIViewCreator
+ (id<XPUIView> _Nonnull)createViewWithDelegate:(id<XPUIViewDelegate> _Nullable)delegate;
{
    id view = [[XPUIView_macOS alloc] init];
    [view setXp_delegate:delegate];
    return view;
}
@end
