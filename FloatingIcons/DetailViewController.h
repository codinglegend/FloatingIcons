//
//  DetailViewController.h
//  FloatingIcons
//
//  Created by Alain  on 2015-06-11.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocialItem.h"

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *bigImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *summaryLabel;

@property (weak, nonatomic) SocialItem *selectedItem;


@end
