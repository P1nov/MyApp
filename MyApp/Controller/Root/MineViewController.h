//
//  MineViewController.h
//  MyApp
//
//  Created by  P1no on 2018/5/8.
//  Copyright © 2018年  P1no. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MineViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) UITableView *myTableView; 

@end
