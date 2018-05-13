//
//  RootViewController.m
//  MyApp
//
//  Created by  P1no on 2018/5/8.
//  Copyright © 2018年  P1no. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
    self.viewControllers = @[self.mainViewController, self.mutiViewController, self.mineViewController];
}

//-(void)loadView{
//    
//}
//
-(MineViewController *)mineViewController{
    if(!_mineViewController){
        _mineViewController = [[MineViewController alloc]init];
        _mineViewController.title = @"我的";
    }
    
    return _mineViewController;
}

-(MutipartViewController *)mutiViewController{
    if(!_mutiViewController){
        _mutiViewController = [[MutipartViewController alloc]init];
        _mutiViewController.title = @"功能";

    }
    return _mutiViewController;
}

-(MainViewController *)mainViewController{
    if(!_mainViewController){
        _mainViewController = [[MainViewController alloc]init];
        _mainViewController.title = @"主页";
    }
    return _mainViewController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
