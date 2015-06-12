//
//  MenuViewController.m
//  FloatingIcons
//
//  Created by Alain  on 2015-06-11.
//  Copyright (c) 2015 Alain . All rights reserved.
//

#import "MenuViewController.h"
#import "SocialItemCell.h"
#import "SocialItem.h"
#import "DetailViewController.h"

@interface MenuViewController ()
@property (nonatomic) NSArray* socialItems;
@property (nonatomic, strong) SocialItem *selectedSocialItem;

@end

@implementation MenuViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    self.collectionView.contentInset = UIEdgeInsetsMake(100, 0, 0, 0); // setting the inset from the top must be done programmatically in this case because the only option in storyboard is a section inset. Since we have multiple sections in this project, this will mean multiple insets, which we do not want.
    
    self.collectionView.backgroundColor = [UIColor whiteColor]; //collectionView is the parameter passed in? add to viewdidLoad
    
    // Do any additional setup after loading the view.
    SocialItem *twitter = [[SocialItem alloc] initWithSocialItem:@"Twitter" andImage:[UIImage imageNamed:@"icon-twitter"] andColor:[UIColor colorWithRed:0.255 green:0.557 blue:0.910 alpha:1] andSummary:@"Twitter is an online social networking service that enables users to send and read short 140-character messages called \"tweets\"."];
    SocialItem *facebook = [[SocialItem alloc] initWithSocialItem:@"Facebook" andImage:[UIImage imageNamed:@"icon-facebook"] andColor:[UIColor colorWithRed:.239 green:0.353 blue:0.588 alpha:1] andSummary:@"Facebook (formerly thefacebook) is an online social networking service headquartered in Menlo Park, California. Its name comes from a colloquialism for the directory given to students at some American universities."];
    SocialItem *youtube = [[SocialItem alloc] initWithSocialItem:@"YouTube" andImage:[UIImage imageNamed:@"icon-youtube"] andColor:[UIColor colorWithRed:0.729 green:0.188 blue:0.180 alpha:1] andSummary:@"YouTube is a video-sharing website headquartered in San Bruno, California. The service was created by three former PayPal employees in February 2005 and has been owned by Google since late 2006. The site allows users to upload, view, and share videos."];
    SocialItem *vimeo = [[SocialItem alloc] initWithSocialItem:@"Vimeo" andImage:[UIImage imageNamed:@"icon-vimeo"] andColor:[UIColor colorWithRed:0.329 green:0.737 blue:0.988 alpha:1] andSummary:@"Vimeo is a U.S.-based video-sharing website on which users can upload, share and view videos. Vimeo was founded in November 2004 by Jake Lodwick and Zach Klein."];
    SocialItem *instagram = [[SocialItem alloc] initWithSocialItem:@"Instagram" andImage:[UIImage imageNamed:@"icon-instagram"] andColor:[UIColor colorWithRed:0.325 green:0.498 blue:0.635 alpha:1] andSummary:@"Instagram is an online mobile photo-sharing, video-sharing and social networking service that enables its users to take pictures and videos, and share them on a variety of social networking platforms, such as Facebook, Twitter, Tumblr and Flickr."];
    
    self.socialItems = @[twitter, facebook, youtube, vimeo, instagram];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}

// the following method passes in a parameter called section therefore we can indicate that we want the first section to be of x size, second section to be of another size, etc. if/else logic. don't need to implement this method multiple times.
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (section == 0){
        return 2;
    }else if (section == 1){
        return 3;
    }
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    SocialItemCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
//    cell.backgroundColor = [self.socialItems[indexPath.item] color];
//    cell.imageView.image = [self.socialItems[indexPath.item] image]
// why do this wehn we can call the method we already defined in socialItemCell.m
    
    if (indexPath.section > 0){
    [cell setUpSocialItem:self.socialItems[indexPath.item+2]];
    }else{
        [cell setUpSocialItem:self.socialItems[indexPath.item]];
    }



    
    return cell;
}

-(UIEdgeInsets)collectionView:(UICollectionView*)collectionView
                        layout:(UICollectionViewLayout *)collectionViewLayout
       insetForSectionAtIndex:(NSInteger)section{
    if (section == 0){
        return UIEdgeInsetsMake(0, self.collectionView.frame.size.width/5, 20, self.collectionView.frame.size.width/5); // (top, left, bottom, right)
    }else if (section == 1)
        return UIEdgeInsetsMake(0, self.collectionView.frame.size.width/24, 0, self.collectionView.frame.size.width/24);
    else{
        return UIEdgeInsetsZero;
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"showDetails"]){
        DetailViewController *detailViewController = (DetailViewController *)segue.destinationViewController;
        // Give the selected social item to the detail view controller.
        detailViewController.selectedItem = self.selectedSocialItem;
    }

}

#pragma mark <UICollectionViewDelegate>


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    self.selectedSocialItem = [self.socialItems objectAtIndex:indexPath.item];
    
    [self performSegueWithIdentifier:@"showDetails" sender:self];
}


/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
