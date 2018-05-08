//
//  MineTableViewCell.m
//  MyApp
//
//  Created by  P1no on 2018/5/8.
//  Copyright © 2018年  P1no. All rights reserved.
//

#import "MineTableViewCell.h"

@implementation MineTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        [self.contentView addSubview:self.iconImageView];
        [self.contentView addSubview:self.nameLabel];
        [self.contentView addSubview:self.signLabel];
        [self.contentView addSubview:self.icon1];
        [self.contentView addSubview:self.label];
    }
    return self;
}

-(UIImageView *)iconImageView{
    if(!_iconImageView){
        UIImageView *iconImg = [[UIImageView alloc]init];
        iconImg.frame = CGRectMake(5, 10, self.frame.size.width/5.5, self.frame.size.height/1.2);
        self.iconImageView = iconImg;
        
    }
    
    return self.iconImageView;
}

-(UIImageView *)icon1{
    if(!_icon1){
        UIImageView *icon = [[UIImageView alloc]init];
        icon.frame = CGRectMake(10, 10, self.frame.size.width/11, self.frame.size.height/2);
        self.icon1 = icon;
    }
    return self.icon1;
}

-(UILabel *)nameLabel{
    if(!_nameLabel){
        UILabel *label = [[UILabel alloc]init];
        label.frame = CGRectMake(self.iconImageView.frame.origin.x + self.iconImageView.frame.size.width + 5, self.iconImageView.frame.origin.y, self.frame.size.width/3, self.frame.size.height/4);
        self.nameLabel = label;
    }
    return self.nameLabel;
}

-(UILabel *)signLabel{
    if(!_signLabel){
        UILabel *label = [[UILabel alloc]init];
        label.frame = CGRectMake(self.nameLabel.frame.origin.x, self.nameLabel.frame.origin.y + self.nameLabel.frame.size.height + 5, self.nameLabel.frame.size.width, self.nameLabel.frame.size.height);
        self.signLabel = label;
    }
    return self.signLabel;
}

-(UILabel *)label{
    if(!_label){
        UILabel *label = [[UILabel alloc]init];
        label.frame = CGRectMake(self.icon1.frame.origin.x + self.icon1.frame.size.width + 5, self.icon1.frame.origin.y, self.frame.size.width/2, self.icon1.frame.size.height);
        self.label = label;
    }
    return self.label;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
