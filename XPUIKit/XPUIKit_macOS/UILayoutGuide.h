//
//  UILayoutGuide.h
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 02/08/2018.
//

@import AppKit;

@interface UILayoutGuide: NSObject
@property (readonly) NSRect frame;
@property (weak, nullable) NSView *owningView;
@property (readonly, strong) NSLayoutXAxisAnchor* leadingAnchor;
@property (readonly, strong) NSLayoutXAxisAnchor* trailingAnchor;
//@property (readonly, strong) NSLayoutXAxisAnchor* leftAnchor;
//@property (readonly, strong) NSLayoutXAxisAnchor* rightAnchor;
@property (readonly, strong) NSLayoutYAxisAnchor* topAnchor;
@property (readonly, strong) NSLayoutYAxisAnchor* bottomAnchor;
@property (readonly, strong) NSLayoutDimension* widthAnchor;
@property (readonly, strong) NSLayoutDimension* heightAnchor;
@property (readonly, strong) NSLayoutXAxisAnchor* centerXAnchor;
@property (readonly, strong) NSLayoutYAxisAnchor* centerYAnchor;
- (instancetype _Nonnull)initWithOwningView:(NSView* _Nonnull)view;
@end
