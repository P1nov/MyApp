//
//  MineViewController.m
//  MyApp
//
//  Created by  P1no on 2018/5/8.
//  Copyright © 2018年  P1no. All rights reserved.
//

#import "MineViewController.h"
#import "MineTableViewCell.h"
//#import <AFNetworking/AFNetworking.h>
#import "AFNetWorking.h"

@interface MineViewController (){
    UIButton *btn;
}

@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.myTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width) style:UITableViewStylePlain];
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    [self.view addSubview:self.myTableView];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    MineTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"mineCell"];
    if(cell == nil){
        cell = [[MineTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"mineCell"];
    }
    switch (indexPath.row) {
        case 0:{
            cell.iconImageView.backgroundColor = [UIColor blueColor];
            cell.nameLabel.text = @"未登录";
            cell.signLabel.text = @"请登录";
            cell.icon1.hidden = YES;
            cell.label.hidden = YES;
        }
            break;
        case 1:{
            cell.iconImageView.hidden = YES;
            cell.nameLabel.hidden = YES;
            cell.signLabel.hidden = YES;
            cell.icon1.backgroundColor = [UIColor redColor];
            cell.label.text = @"修改个人信息";
        }
            break;
        case 2:{
            cell.iconImageView.hidden = YES;
            cell.nameLabel.hidden = YES;
            cell.signLabel.hidden = YES;
            cell.icon1.backgroundColor = [UIColor redColor];
            cell.label.text = @"重置密码";
        }
            break;
        default:
            break;
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.row == 0){
        return 70;
    }
    return 55;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 1:{
            NSMutableDictionary *dic = [NSMutableDictionary dictionary];
            [dic setObject:@"admin" forKey:@"username"];
            [dic setObject:@"123456" forKey:@"password"];
            AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
            manager.requestSerializer = [AFJSONRequestSerializer serializer];
            manager.responseSerializer = [AFJSONResponseSerializer serializer];
            [manager POST:@"http://192.168.1.104:8080/domitory/user/selectAll" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                NSLog(@"~~~~~%@",responseObject);
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                
            }];
        }
            break;
        default:
            break;
    }
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
