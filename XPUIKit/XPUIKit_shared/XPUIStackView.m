//
//  NSStackView.m
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 03/08/2018.
//

#import "XPUIStackView.h"

@implementation XPUIStackViewCreator
+ (XPUIStackViewInstance _Nonnull)createStackViewWithDelegate:(id<XPUIViewDelegate> _Nullable)delegate;
{
    id view = [[NSStackView alloc] init];
    [view xp_commonInit];
    [view setXp_delegate:delegate];
    return view;
}
@end
