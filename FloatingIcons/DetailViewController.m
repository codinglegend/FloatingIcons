//
//  DetailViewController.m
//  FloatingIcons
//
//  Created by Alain  on 2015-06-11.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController


-(void)viewDidLoad{
    [super viewDidLoad];
    self.bigImageView.image = self.selectedItem.image;
    self.view.backgroundColor = self.selectedItem.color;
}

//-(void)viewDidAppear:(BOOL)animated{  // code used to be in here but it was lagging 
//    [super viewDidAppear:animated];
//}

- (IBAction)backButtonWasPressed:(UIButton *)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
