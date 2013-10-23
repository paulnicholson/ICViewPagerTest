#import "PagerController.h"
#import "MasterViewController.h"

@implementation PagerController

- (void)viewDidLoad {
    self.delegate = self;
    self.dataSource = self;
    [super viewDidLoad];
}

- (NSUInteger)numberOfTabsForViewPager:(ViewPagerController *)viewPager {
    return 4;
}

- (UIView *)viewPager:(ViewPagerController *)viewPager viewForTabAtIndex:(NSUInteger)index {
    UILabel *label = [UILabel new];
    label.backgroundColor = [UIColor clearColor];
    label.font = [UIFont systemFontOfSize:13.0];
    label.text = [NSString stringWithFormat:@"Tab #%d",index];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor blackColor];
    [label sizeToFit];
    return label;
}

- (UIViewController *)viewPager:(ViewPagerController *)viewPager contentViewControllerForTabAtIndex:(NSUInteger)index {
    MasterViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"masterViewController"];
    return controller;
}

@end
