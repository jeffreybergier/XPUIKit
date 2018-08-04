//
//  ListViewController.m
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 04/08/2018.
//

#import "ListViewController_macOS.h"

@interface ListViewController_macOS ()

@property (weak, nonatomic) IBOutlet NSTableView* tableView;

@end

@implementation ListViewController_macOS

@end

@implementation XPUIListViewControllerCreator
+ (id<XPUIListViewController> _Nonnull)createListViewControllerWithDelegate:(id<XPUIListViewControllerDelegate> _Nonnull)delegate;
{
    id<XPUIListViewController> vc = [[ListViewController_macOS alloc] initWithNibName:@"ListViewController_macOS"
                                                                               bundle:[NSBundle bundleForClass:self]];
    [vc setXp_delegate:delegate];
    return vc;
}
@end
