//
//  XPUIViewController.m
//  XPUIKit
//
//  Created by Jeffrey Bergier on 01/08/2018.
//

#import "XPUIViewController.h"
#import "XPUIViewController_macOS.h"

@implementation XPUIViewControllerCreator
+ (id<XPUIViewController> _Nonnull)createViewControllerWithDelegate:(id<XPUIViewControllerDelegate> _Nonnull)delegate;
{
    NSViewController<XPUIViewController>* vc = [[XPUIViewController_macOS alloc] init];
    [vc setXp_delegate:delegate];
    return vc;
}
@end
