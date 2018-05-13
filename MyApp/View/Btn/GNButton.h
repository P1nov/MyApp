//
//  GNButton.h
//  MyApp
//
//  Created by  P1no on 2018/5/13.
//  Copyright © 2018年  P1no. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GNButton : UIControl

@property(nonatomic, strong) UILabel *title;

@property(nonatomic, strong) UIImageView *icon;

-(void)setTitleText:(NSString *)title;
-(void)setIconImage:(UIImage *)image;

@end
