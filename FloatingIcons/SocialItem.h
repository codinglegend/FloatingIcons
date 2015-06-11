//
//  SocialItem.h
//  FloatingIcons
//
//  Created by Alain  on 2015-06-11.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface SocialItem : NSObject

@property (nonatomic) UIImage* image;
@property (nonatomic) UIColor* color;
@property (nonatomic) NSString* name;
@property (nonatomic) NSString* summary;

-(instancetype)initWithSocialItem:(NSString*)name andImage:(UIImage*)image andColor:(UIColor*)color andSummary:(NSString*)summary;

@end
