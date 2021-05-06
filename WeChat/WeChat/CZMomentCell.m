//
//  CZMomentCell.m
//  WeChat
//
//  Created by P tYou on 2021/5/5.
//  Copyright © 2021年 P tYou. All rights reserved.
//

#import "CZMomentCell.h"
#import "Discover.h"

@interface CZMomentCell()

@property (nonatomic, weak) UIImageView *imgViewIcon;
@property (nonatomic, weak) UILabel *Name;
@property (nonatomic, weak) UILabel *Text;
@property (nonatomic, weak) UIImageView *imgViewPicture;

@end
@implementation CZMomentCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        UIImageView *imgViewIcon = [[UIImageView alloc]init];
        [self.contentView addSubview:imgViewIcon];
        self.imgViewIcon =imgViewIcon;
        
        UILabel *Name = [[UILabel alloc]init];
        [self.contentView addSubview:Name];
        self.Name=Name;
        
        UILabel *Text = [[UILabel alloc]init];
        [self.contentView addSubview:Text];
        self.Text=Text;
        
        UIImageView *imgViewpicture = [[UIImageView alloc]init];
        [self.contentView addSubview:imgViewpicture];
        self.imgViewPicture=imgViewpicture;
        
    }
    return  self;
}
-(void)setMoment:(Discover *)Moment
{
    _Moment=Moment;
    
    [self settingData];
    
    [self settingFrame];
}
- (void)settingData
{
    Discover *model = self.Moment;
    self.imgViewIcon.image = [UIImage imageNamed: model.imgViewIcon ];
    self.Name.text=model.name;
    //NSLog(@"ddddd");
    self.Text.text=model.Text;
    if(model.imgViewPicture){
        self.imgViewPicture.image = [UIImage imageNamed:model.imgViewPicture];
        self.imgViewPicture.hidden =NO;
    }else{
        self.imgViewPicture.hidden = YES;
    }
}
- (void)settingFrame
{
    CGFloat margin = 20;
    CGFloat iconW = 50;
    CGFloat iconH = 50;
    CGFloat iconX = margin;
    CGFloat iconY = margin;
    self.imgViewIcon.frame=CGRectMake(iconX, iconY, iconW, iconH);
    
    CGFloat nameX = CGRectGetMaxX(self.imgViewIcon.frame)+margin;
    CGFloat nameY = iconY + (iconH - 20)/2;
    self.Name.frame = CGRectMake(nameX, nameY, 100, 20);
    
    CGFloat textX = iconX;
    CGFloat textY = CGRectGetMaxY(self.imgViewIcon.frame) + 10;
    self.Text.frame=CGRectMake(textX, textY, 100, 100);
    
    CGFloat picW = 100;
    CGFloat picH = 100;
    CGFloat picX = iconX;
    CGFloat picY = iconY+150;
    self.imgViewPicture.frame=CGRectMake(picX, picY, picW, picH);
    
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
