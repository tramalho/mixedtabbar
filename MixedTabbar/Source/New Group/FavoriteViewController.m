//
//  FavoriteViewController.m
//  MixedTabbar
//
//  Created by Thiago Antonio Ramalho on 27/05/18.
//  Copyright © 2018 Tramalho. All rights reserved.
//

#import "FavoriteViewController.h"
#import "MixedTabbar-Swift.h"

#define RAND_FROM_TO(min, max) (min + arc4random_uniform(max - min + 1))

@interface FavoriteViewController ()
@property (nonatomic, strong) CustomTabBarViewController *customTabVC;
@end

@implementation FavoriteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _customTabVC = (CustomTabBarViewController *) self.tabBarController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeBadge:(id)sender {
    NSInteger value = RAND_FROM_TO(0, 99);
    [_customTabVC updateBadgeValueWithPosition:1 newValue:value];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
