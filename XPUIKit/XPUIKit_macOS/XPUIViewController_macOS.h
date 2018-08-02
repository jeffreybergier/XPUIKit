//
//  XPUIViewController_macOS.h
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 01/08/2018.
//

@import AppKit;
#import "XPUIViewController.h"

@interface XPUIViewController_macOS: NSViewController <XPUIViewController>
@property (nonatomic, strong) id<XPUIViewControllerDelegate> _Nonnull xp_delegate;
@end
