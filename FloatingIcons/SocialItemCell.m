//
//  SocialItemCell.m
//  FloatingIcons
//
//  Created by Alain  on 2015-06-11.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import "SocialItemCell.h"

@implementation SocialItemCell

-(void)awakeFromNib{
    [super awakeFromNib];
    
    [self setNeedsLayout];
}

-(void)setNeedsLayout{
    self.layer.cornerRadius = self.frame.size.width/2;
    self.layer.masksToBounds = YES;
}


@end
