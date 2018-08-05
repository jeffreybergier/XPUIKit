//
//  ListCellView_macOS.h
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 04/08/2018.
//

@import AppKit;
#import "XPUIListViewController.h"

@interface NSTableCellView (XPUI) <XPUIListCellView>
@property (nonatomic, strong) id<XPUIListCellViewDelegate> _Nullable xp_delegate;
@end

@interface XPUIListCellViewRecycle: NSObject
+ (id<XPUIListCellView> _Nonnull)createOrRecycleCellViewWithIdentifier:(NSString* _Nonnull)identifier
                                                withListViewController:(id<XPUIListViewController> _Nonnull)listVC;
@end
