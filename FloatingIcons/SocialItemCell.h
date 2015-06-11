//
//  SocialItemCell.h
//  FloatingIcons
//
//  Created by Alain  on 2015-06-11.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialItem.h"

@interface SocialItemCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIView *viewColor;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

-(void)setUpSocialItem:(SocialItem*)socialItem;


@end
