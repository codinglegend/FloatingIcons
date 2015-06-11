//
//  SocialItem.m
//  FloatingIcons
//
//  Created by Alain  on 2015-06-11.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import "SocialItem.h"

@implementation SocialItem


-(instancetype)initWithSocialItem:(NSString*)name andImage:(UIImage*)image andColor:(UIColor*)color andSummary:(NSString*)summary{
    self = [super init];
    if (self){
    self.name = name;
    self.image = image;
    self.color = color;
    self.summary = summary;
    }
    return self;
}

@end
