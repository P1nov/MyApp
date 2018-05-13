//
//  MutipartViewController.m
//  MyApp
//
//  Created by  P1no on 2018/5/8.
//  Copyright © 2018年  P1no. All rights reserved.
//

#import "MutipartViewController.h"
#import "GNButton.h"

@interface MutipartViewController ()

@end

@implementation MutipartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    GNButton *btn = [[GNButton alloc]initWithFrame:CGRectMake(50, 50, 70, 70)];
    [btn setTitleText:@"功能按钮"];
    [btn setIconImage:[UIImage imageNamed:@"功能管理"]];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

-(void)clickBtn{
    NSLog(@"成功设置自定义Button");
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
