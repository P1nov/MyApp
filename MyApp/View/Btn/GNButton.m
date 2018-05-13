//
//  GNButton.m
//  MyApp
//
//  Created by  P1no on 2018/5/13.
//  Copyright © 2018年  P1no. All rights reserved.
//

#import "GNButton.h"

@implementation GNButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self addSubview:self.title];
        [self addSubview:self.icon];
    }
    return self;
}

-(UILabel *)title{
    if(!_title){
        _title = [[UILabel alloc]initWithFrame:CGRectMake(0, 45, self.frame.size.width, 20)];
    }
    return _title;
}

-(UIImageView *)icon{
    if(!_icon){
        _icon = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, 40)];
    }
    return _icon;
}

-(void)setTitleText:(NSString *)title{
    self.title.text = title;
}

-(void)setIconImage:(UIImage *)image{
    self.icon.image = image;
}

@end
