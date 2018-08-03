//
//  NSTextField.h
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 02/08/2018.
//

@import AppKit;
#import "XPUIView.h"

@interface NSTextField (XPUI) <XPUILabel>

@end

@interface XPUILabelCreator: NSObject
+ (id<XPUILabel> _Nonnull)createLabelWithDelegate:(id<XPUIViewDelegate> _Nullable)delegate;
@end

