//
//  XPUIView_macOS.m
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

#import "NSView.h"
#import "UILayoutGuide.h"
@import ObjectiveC;

@implementation NSView (XPUI)

static char kLayoutGuideAssociationKey;
static char kXPUIViewDelegateKey;

+ (void)load;
{
    void(^commonInit)(id<AspectInfo>) = ^void(id<AspectInfo> aspectInfo){
        NSView<XPUIView>* view = [aspectInfo instance];
        objc_setAssociatedObject(view,
                                 &kLayoutGuideAssociationKey,
                                 [[UILayoutGuide alloc] initWithOwningView:view],
                                 OBJC_ASSOCIATION_RETAIN);
    };
    [NSView aspect_hookSelector:@selector(init)
                    withOptions:AspectPositionAfter
                     usingBlock:commonInit error:nil];
    // NOTE: hooking into initWithFrame caused infinite init loop
    [NSView aspect_hookSelector:@selector(initWithCoder:)
                    withOptions:AspectPositionAfter
                     usingBlock:commonInit error:nil];
    [NSView aspect_hookSelector:@selector(viewDidMoveToWindow)
                    withOptions:AspectPositionAfter
                     usingBlock:^(id<AspectInfo> info)
     {
         NSView<XPUIView>* v = [info instance];
         [[v xp_delegate] viewDidMoveToPresentation:v];
     } error:nil];
    [NSView aspect_hookSelector:@selector(layout)
                    withOptions:AspectPositionAfter
                     usingBlock:^(id<AspectInfo> info)
     {
         NSView<XPUIView>* v = [info instance];
         [[v xp_delegate] viewDidLayout:v];
     } error:nil];
//    [NSView aspect_hookSelector:@selector(requiresConstraintBasedLayout)
//                    withOptions:AspectPositionInstead
//                     usingBlock:^(id<AspectInfo> info)
//     {
//         NSInvocation* invocation = [info originalInvocation];
//         BOOL answer = YES;
//         [invocation setReturnValue:&answer];
//     } error:nil];
}

- (CALayer *)xp_layer;
{
    return [self layer];
}

- (void)xp_addSubview:(id<XPUIView> _Nonnull)view;
{
    [self addSubview:view];
}

- (UILayoutGuide* _Nonnull)xp_layoutGuide;
{
    id obj = objc_getAssociatedObject(self, &kLayoutGuideAssociationKey);
    NSLog(@"LayoutGuide: %@ for View: %@", obj, self);
    return obj;
}

- (id<XPUIViewDelegate>)xp_delegate;
{
    return objc_getAssociatedObject(self, &kXPUIViewDelegateKey);
}

- (void)setXp_delegate:(id<XPUIViewDelegate>)delegate;
{
    objc_setAssociatedObject(self, &kXPUIViewDelegateKey, delegate, OBJC_ASSOCIATION_RETAIN);
}
- (void)xp_commonInit;
{
    [self setWantsLayer:YES];
    [self setTranslatesAutoresizingMaskIntoConstraints:NO];
}

@end

@implementation XPUIViewCreator
+ (NSView<XPUIView>* _Nonnull)createViewWithDelegate:(id<XPUIViewDelegate> _Nullable)delegate;
{
    id view = [[NSView alloc] init];
    [view xp_commonInit];
    [view setXp_delegate:delegate];
    return view;
}
@end
