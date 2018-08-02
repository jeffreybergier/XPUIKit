//
//  XPUIView_macOS.h
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 02/08/2018.
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

@import AppKit;
#import "XPUIView.h"
@import Aspects;

@interface XPUIView_macOS: NSView <XPUIView>
@property (nonatomic, strong) id<XPUIViewDelegate> _Nullable xp_delegate;
@property (readonly, nonatomic, strong) UILayoutGuide* _Nonnull xp_layoutGuide;
@property (readonly, nonatomic, strong) CALayer* _Nonnull xp_layer;
- (void)xp_addSubview:(id<XPUIView> _Nonnull)view;
@end

@interface XPUIViewCreator: NSObject
+ (id<XPUIView> _Nonnull)createViewWithDelegate:(id<XPUIViewDelegate> _Nullable)delegate;
@end
