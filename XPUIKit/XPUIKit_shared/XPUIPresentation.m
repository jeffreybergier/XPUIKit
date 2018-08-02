//
//  XPUIPresentationContext.m
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 01/08/2018.
//

#import "XPUIPresentation.h"
#import "XPUIWindowController.h"

@implementation XPUIPresentationCreator: NSObject
+ (id<XPUIPresentation> _Nonnull)createPresentationWithDelegate:(id<XPUIPresentationDelegate> _Nonnull)delegate;
{
#if TARGET_OS_IPHONE
    return nil;
#else
    NSWindowController<XPUIPresentation>* wc = [[XPUIWindowController alloc] initWithWindowNibName:@"XPUIWindowController"];
    [wc setXp_delegate:delegate];
    [wc showWindow:nil];
    return wc;
#endif
}
@end
