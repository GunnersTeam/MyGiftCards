//
//  WishlistViewController.m
//  MyGiftCard
//
//  Created by Ahmed Madeh on 2/26/16.
//  Copyright © 2016 Ahmed Madeh. All rights reserved.
//

#import "WishlistViewController.h"

@interface WishlistViewController ()

@end

@implementation WishlistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Collection View

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 6;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    WishlistCollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"wishlistCell" forIndexPath:indexPath];
    return cell;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    UIStoryboard* storyboard;
    storyboard = [UIStoryboard storyboardWithName:@"Home" bundle:[NSBundle mainBundle]];
    CardDetailsViewController* cardVC = [storyboard instantiateViewControllerWithIdentifier:@"cardDetails"];
    [self.navigationController pushViewController:cardVC animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
