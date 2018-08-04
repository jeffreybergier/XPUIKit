//
//  XPUIViewController.h
//  XPUIKit
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

@import Foundation;
#import "XPUIView.h"

@protocol XPUIViewController;
@protocol XPUIViewControllerDelegate;

@protocol XPUIViewControllerDelegate
- (id<XPUIView> _Nonnull)provideViewForController:(id<XPUIViewController> _Nonnull)controller;
- (void)viewDidLoadInController:(id<XPUIViewController> _Nonnull)controller;
- (void)viewDidLayoutSubviewsInController:(id<XPUIViewController> _Nonnull)controller;
@end

@protocol XPUIViewController
@property (nonatomic, strong) id<XPUIViewControllerDelegate> _Nullable xp_delegate;
@property (nonatomic, copy) NSString* _Nullable xp_title;
@end

