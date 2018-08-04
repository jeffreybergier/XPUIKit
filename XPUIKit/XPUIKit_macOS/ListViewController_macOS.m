//
//  ListViewController.m
//  XPUIKit_macOS
//
//  Created by Jeffrey Bergier on 04/08/2018.
//

#import "ListViewController_macOS.h"

@interface ListViewController_macOS () <NSTableViewDataSource, NSTableViewDelegate>

@property (weak, nonatomic) IBOutlet NSTableView* tableView;

@end

@implementation ListViewController_macOS

- (void)viewDidLoad;
{
    [super viewDidLoad];
    [[self tableView] setDataSource:self];
    [[self tableView] setDelegate:self];
}
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView;
{
    return [[self xp_delegate] numberOfRowsInListViewController:self];
}
- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row;
{
    return [[self xp_delegate] cellForRowAtIndex:row inListViewController:self];
}
- (NSTableRowView *)tableView:(NSTableView *)tableView rowViewForRow:(NSInteger)row;
{
    return nil;
}



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
