//
//  UILayoutGuide.m
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

#import "UILayoutGuide.h"

@implementation UILayoutGuide

@dynamic frame, leadingAnchor, trailingAnchor, /*leftAnchor, rightAnchor,*/ topAnchor, bottomAnchor, widthAnchor, heightAnchor, centerXAnchor, centerYAnchor;

- (instancetype _Nonnull)initWithOwningView:(NSView* _Nonnull)view;
{
    self = [super init];
    self->_owningView = view;
    return self;
}

- (NSLayoutGuide* _Nullable)existingLayoutGuide;
{
    return [[[self owningView] layoutGuides] firstObject];
}

- (NSRect)frame;
{
    return [[self owningView] frame];
}

- (NSLayoutXAxisAnchor *)leadingAnchor;
{
    NSLayoutGuide* g = [self existingLayoutGuide];
    if (g) {
        return [g leadingAnchor];
    } else {
        return [[self owningView] leadingAnchor];
    }
}

- (NSLayoutXAxisAnchor *)trailingAnchor;
{
    NSLayoutGuide* g = [self existingLayoutGuide];
    if (g) {
        return [g trailingAnchor];
    } else {
        return [[self owningView] trailingAnchor];
    }
}

- (NSLayoutYAxisAnchor *)topAnchor;
{
    NSLayoutGuide* g = [self existingLayoutGuide];
    if (g) {
        return [g topAnchor];
    } else {
        return [[self owningView] topAnchor];
    }
}

- (NSLayoutYAxisAnchor *)bottomAnchor;
{
    NSLayoutGuide* g = [self existingLayoutGuide];
    if (g) {
        return [g bottomAnchor];
    } else {
        return [[self owningView] bottomAnchor];
    }
}

- (NSLayoutDimension *)widthAnchor;
{
    NSLayoutGuide* g = [self existingLayoutGuide];
    if (g) {
        return [g widthAnchor];
    } else {
        return [[self owningView] widthAnchor];
    }
}

- (NSLayoutDimension *)heightAnchor;
{
    NSLayoutGuide* g = [self existingLayoutGuide];
    if (g) {
        return [g heightAnchor];
    } else {
        return [[self owningView] heightAnchor];
    }
}

- (NSLayoutXAxisAnchor *)centerXAnchor;
{
    NSLayoutGuide* g = [self existingLayoutGuide];
    if (g) {
        return [g centerXAnchor];
    } else {
        return [[self owningView] centerXAnchor];
    }
}

- (NSLayoutYAxisAnchor *)centerYAnchor;
{
    NSLayoutGuide* g = [self existingLayoutGuide];
    if (g) {
        return [g centerYAnchor];
    } else {
        return [[self owningView] centerYAnchor];
    }
}

@end
