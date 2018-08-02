//
//  XPUIViewController_macOS.m
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 01/08/2018.
//

#import "XPUIViewController_macOS.h"

@interface XPUIViewController_macOS ()

@end

@implementation XPUIViewController_macOS

- (void)loadView;
{
    id view = [[self xp_delegate] provideViewForViewController:self];
    [self setView:view];
}

@end
