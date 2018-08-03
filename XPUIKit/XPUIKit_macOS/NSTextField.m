//
//  NSTextField.m
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 02/08/2018.
//

#import "NSTextField.h"

@implementation NSTextField (XPUI)

@dynamic xp_delegate, xp_layoutGuide, xp_layer;

- (NSAttributedString* _Nullable)xp_attributedString;
{
    return [self attributedStringValue];
}

- (void)setXp_attributedString:(NSAttributedString *)value;
{
    [self setAttributedStringValue:value];
}

- (NSSize)intrinsicContentSize;
{
    return NSMakeSize(200, 100);
}

@end

@implementation XPUILabelCreator
+ (id<XPUILabel> _Nonnull)createLabelWithDelegate:(id<XPUIViewDelegate> _Nullable)delegate;
{
    NSTextField<XPUILabel>* view = [[NSTextField alloc] init];
    [view setXp_delegate:delegate];
    [view setEditable:NO];
    [view setBezeled:NO];
    [view setDrawsBackground:NO];
    return view;
}
@end
