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
        _iconImageView = [[UIImageView alloc]init];
        _iconImageView.frame = CGRectMake(5, 10, self.frame.size.width/5.5, self.frame.size.height/1.2);
    }
    
    return _iconImageView;
}

-(UIImageView *)icon1{
    if(!_icon1){
        _icon1 = [[UIImageView alloc]init];
        _icon1.frame = CGRectMake(10, 10, self.frame.size.width/11, self.frame.size.height/2);
    }
    return _icon1;
}

-(UILabel *)nameLabel{
    if(!_nameLabel){
        _nameLabel = [[UILabel alloc]init];
        _nameLabel.frame = CGRectMake(self.iconImageView.frame.origin.x + self.iconImageView.frame.size.width + 5, self.iconImageView.frame.origin.y, self.frame.size.width/3, self.frame.size.height/4);
    }
    return _nameLabel;
}

-(UILabel *)signLabel{
    if(!_signLabel){
        _signLabel = [[UILabel alloc]init];
        _signLabel.frame = CGRectMake(self.nameLabel.frame.origin.x, self.nameLabel.frame.origin.y + self.nameLabel.frame.size.height + 5, self.nameLabel.frame.size.width, self.nameLabel.frame.size.height);
    }
    return _signLabel;
}

-(UILabel *)label{
    if(!_label){
        _label = [[UILabel alloc]init];
        _label.frame = CGRectMake(self.icon1.frame.origin.x + self.icon1.frame.size.width + 5, self.icon1.frame.origin.y, self.frame.size.width/2, self.icon1.frame.size.height);
    }
    return _label;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
