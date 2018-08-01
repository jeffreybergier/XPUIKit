//
//  XPUIColor.h
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 01/08/2018.
//

@import AppKit;
#import "XPUIProtocols.h"

@interface NSColor (XPUI) <XPUIColor>

@property (readonly, nonatomic) CGColorRef xp_cgColor;

@end
