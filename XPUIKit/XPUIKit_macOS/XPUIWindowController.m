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
    id<XPUIViewController> vc = [[self xp_delegate] provideViewControllerForPresentation:self];
    [self setContentViewController:vc];
}

@end
