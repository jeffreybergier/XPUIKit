//
//  NSStackView.h
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 03/08/2018.
//

#import "Typedefs.h"
#import "XPUIView.h"

@interface XPUIStackViewCreator: NSObject
+ (XPUIStackViewInstance _Nonnull)createStackViewWithDelegate:(id<XPUIViewDelegate> _Nullable)delegate;
@end

