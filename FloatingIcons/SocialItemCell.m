//
//  SocialItemCell.m
//  FloatingIcons
//
//  Created by Alain  on 2015-06-11.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import "SocialItemCell.h"

@interface SocialItemCell ()

@property (weak, nonatomic) IBOutlet UIView *viewColor;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end


@implementation SocialItemCell

-(void)setObject:(SocialItem *)object{
    _object = object;
    [self configure];
}

-(void)awakeFromNib{
    [super awakeFromNib];

    [self setNeedsDisplay];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.layer.cornerRadius = self.frame.size.width/2;
    self.layer.masksToBounds = YES;
}

-(void)configure{
    self.viewColor.backgroundColor = self.object.color;
    self.imageView.image = self.object.image;
}



@end
