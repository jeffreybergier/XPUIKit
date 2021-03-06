//
//  NSStackView.h
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 03/08/2018.
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

@interface NSStackView (XPUI) <XPUIStackView>
@property (nonatomic) CGFloat xp_spacing;
@property (nonatomic) NSLayoutAttribute xp_alignment;
@property (nonatomic) NSStackViewDistribution xp_distribution;
@property (nonatomic) NSUserInterfaceLayoutOrientation xp_orientation;
- (void)xp_insertArrangedSubview:(id<XPUIView> _Nonnull)view atIndex:(NSUInteger)stackIndex;
- (void)xp_addArrangedSubview:(id<XPUIView> _Nonnull)subview;
- (void)xp_removeArrangedSubview:(id<XPUIView> _Nonnull)subview;
@end

@interface XPUIStackViewCreator: NSObject
+ (id<XPUIStackView> _Nonnull)createStackViewWithDelegate:(id<XPUIViewDelegate> _Nullable)delegate;
@end
