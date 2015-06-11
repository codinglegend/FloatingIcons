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
    
    [self setNeedsLayout]; //apple says do not call layoutSubviews directly (even though it works in this case) and to call setNeedsLayout instead
}

// to reset the layout, call setNeedsLayout method. apple documentation says do not call layout subviews directly, and call setNeedsLayout instead
-(void)layoutSubviews{
    [super layoutSubviews]; // it works without this line, but since layoutSubviews is an existing method on UIView and we are overriding, it is good form to send the method to the superclass
    self.layer.cornerRadius = self.frame.size.width/2;
    self.layer.masksToBounds = YES;
}

-(void)setUpSocialItem:(SocialItem*)socialItem{
    self.imageView.image = 
}



@end
