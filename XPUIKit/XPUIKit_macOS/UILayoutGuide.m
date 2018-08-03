//
//  UILayoutGuide.m
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 02/08/2018.
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
