//
//  XPUIViewController_macOS.m
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 01/08/2018.
//
//  MIT License
//
//  Copyright (c) 2018 Jeffrey Bergier
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
//

#import "NSViewController+XPUI.h"

@interface XPUIViewController_macOS ()
@end

@implementation XPUIViewController_macOS
- (void)loadView;
{
    id view = [[self xp_delegate] provideViewForController:self];
    [self setView:view];
}
- (void)viewDidLoad;
{
    [super viewDidLoad];
    [[self xp_delegate] viewDidLoadInController:self];
}
- (void)viewDidLayout;
{
    [super viewDidLayout];
    [[self xp_delegate] viewDidLayoutSubviewsInController:self];
}
@end

@implementation XPUIViewControllerCreator
+ (id<XPUIViewController> _Nonnull)createViewControllerWithDelegate:(id<XPUIViewControllerDelegate> _Nonnull)delegate;
{
    NSViewController<XPUIViewController>* vc = [[XPUIViewController_macOS alloc] init];
    [vc setXp_delegate:delegate];
    return vc;
}
@end
