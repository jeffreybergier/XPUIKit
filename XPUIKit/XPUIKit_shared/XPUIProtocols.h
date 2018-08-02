//
//  XPUIProtocols.h
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

#if TARGET_OS_IPHONE
@import UIKit;
#else
@import AppKit;
#endif

@protocol XPUIImage
@end

@protocol XPUIColor
@property (readonly, nonatomic) CGColorRef xp_cgColor;
@end

@protocol XPUILayoutGuide
@property (readonly, strong) NSLayoutXAxisAnchor* leadingAnchor;
@property (readonly, strong) NSLayoutXAxisAnchor* trailingAnchor;
@property (readonly, strong) NSLayoutYAxisAnchor* topAnchor;
@property (readonly, strong) NSLayoutYAxisAnchor* bottomAnchor;
@property (readonly, strong) NSLayoutDimension* widthAnchor;
@property (readonly, strong) NSLayoutDimension* heightAnchor;
@property (readonly, strong) NSLayoutXAxisAnchor* centerXAnchor;
@property (readonly, strong) NSLayoutYAxisAnchor* centerYAnchor;
@end

@protocol XPUIToolbarItemContext
@end

@protocol XPUIToolbarContext
@property NSArray<id<XPUIToolbarContext>>* _Nonnull backgroundColor;
@end

@protocol XPUIViewContext // NS/UI/View
@property (nonatomic) CGFloat xp_alpha;
@property (nonatomic, strong) id<XPUIColor> _Nonnull xp_backgroundColor;
@property (readonly, nonatomic, strong) id<XPUILayoutGuide> _Nonnull xp_safeAreaLayoutGuide;
@end

@protocol XPUIViewControllerContext // NS/UI/ViewController
@property (nonatomic, strong) id<XPUIViewContext> _Nonnull xp_rootView;
@property (readonly, nonatomic, strong) id<XPUILayoutGuide> _Nonnull xp_safeAreaLayoutGuide;
@end

@protocol XPUIListContext // NS/UI/TableView
@end

@protocol XPUIMasterDetailContext <XPUIViewControllerContext> // NS/UI/TableView
@end
