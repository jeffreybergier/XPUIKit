//
//  XPUIWindowController.m
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 01/08/2018.
//

#import "XPUIWindowController.h"

@interface XPUIWindowController ()

@end

@implementation XPUIWindowController

- (void)windowWillLoad;
{
    id<XPUIViewControllerContext> vc = [[self xp_delegate] provideViewControllerContextForPresentationContext:self];
    [self setContentViewController:vc];
}

@end
