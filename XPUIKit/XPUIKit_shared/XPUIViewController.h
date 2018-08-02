//
//  XPUIViewController.h
//  XPUIKit
//
//  Created by Jeffrey Bergier on 01/08/2018.
//

@import Foundation;


@protocol XPUIViewControllerDelegate
- (id)provideViewForViewController:(id _Nonnull)controller;
- (void)viewDidLoadForViewController:(id _Nonnull)controller;
@end

@protocol XPUIViewController
@property (nonatomic, strong) id<XPUIViewControllerDelegate> _Nonnull xp_delegate;
@end

@interface XPUIViewControllerCreator: NSObject
+ (id<XPUIViewController> _Nonnull)createViewControllerWithDelegate:(id<XPUIViewControllerDelegate> _Nonnull)delegate;
@end

