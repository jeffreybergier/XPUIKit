//
//  XPUIView.h
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 01/08/2018.
//

@import AppKit;
#import "XPUIProtocols.h"
#import "NSColor+XPUI_macOS.h"

@interface XPUIView: NSView <XPUIViewContext>

@property (nonatomic) CGFloat xp_alpha;
@property (nonatomic, strong) id<XPUIColor> _Nonnull xp_backgroundColor;
@property (readonly, nonatomic, strong) id<XPUILayoutGuide> _Nonnull xp_safeAreaLayoutGuide;

@end
