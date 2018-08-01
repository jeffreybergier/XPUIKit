//
//  XPUIColor.m
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 01/08/2018.
//

#import "NSColor+XPUI_macOS.h"

@implementation NSColor (XPUI)

@dynamic xp_cgColor;

- (CGColorRef)xp_cgColor;
{
    return [self CGColor];
}

@end
