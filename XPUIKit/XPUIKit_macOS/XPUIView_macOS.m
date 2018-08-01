//
//  XPUIView.m
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 01/08/2018.
//

#import "XPUIView_macOS.h"
#import "NSLayoutGuide+XPUI_macOS.h"

@implementation XPUIView

@dynamic xp_alpha, xp_backgroundColor, xp_safeAreaLayoutGuide;

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (instancetype)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)commonInit;
{
    [self setWantsLayer:YES];
}

- (BOOL)isFlipped;
{
    return YES;
}

- (CGFloat)xp_alpha;
{
    return [self alphaValue];
}

- (void)xp_setAlpha:(CGFloat)alpha;
{
    [self setAlphaValue:alpha];
}

- (id<XPUIColor>)xp_backgroundColor;
{
    CGColorRef color = [[self layer] backgroundColor];
    if (color == NULL) {
        color = [[NSColor whiteColor] CGColor];
    }
    return [NSColor colorWithCGColor:color];
}

- (void)setXp_backgroundColor:(id<XPUIColor>)xp_backgroundColor;
{
    [[self layer] setBackgroundColor:nil];
}

- (id<XPUILayoutGuide>)xp_safeAreaLayoutGuide;
{
    NSLayoutGuide* guide = [[self layoutGuides] firstObject];
    return guide;
}

@end
