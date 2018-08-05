//
//  ListCellView_macOS.m
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 04/08/2018.
//

#import "NSTableCellView+XPUI.h"
#import "ListViewController_macOS.h"
@import Aspects;

@implementation NSTableCellView (XPUI)

+ (void)load;
{
    [NSTableCellView aspect_hookSelector:@selector(prepareForReuse)
                              withOptions:AspectPositionAfter
                               usingBlock:^(id<AspectInfo> info)
     {
         id<XPUIListCellView> cell = [info instance];
         [[cell xp_delegate] prepareForReuseOfCell:cell];
     } error:nil];
}

@end

@implementation XPUIListCellViewRecycle
+ (id<XPUIListCellView> _Nonnull)createOrRecycleCellViewWithIdentifier:(NSString* _Nonnull)identifier
                                                withListViewController:(id<XPUIListViewController> _Nonnull)_listVC;
{
    ListViewController_macOS<XPUIListViewController>* listVC = _listVC;
    id cell = [[listVC tableView] makeViewWithIdentifier:identifier owner:nil];
    if (!cell) {
        cell = [[NSTableCellView alloc] init];
        [cell setIdentifier:identifier];
    }
    [cell prepareForReuse];
    return cell;
}
@end
