//
//  RootViewController.h
//  MyApp
//
//  Created by  P1no on 2018/5/8.
//  Copyright © 2018年  P1no. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MineViewController.h"
#import "MutipartViewController.h"
#import "MainViewController.h"

@interface RootViewController : UITabBarController

@property(nonatomic, strong) MineViewController *mineViewController;

@property(nonatomic, strong) MutipartViewController *mutiViewController;

@property(nonatomic, strong) MainViewController *mainViewController;

@end
