//
//  WishlistCollectionViewCell.h
//  MyGiftCard
//
//  Created by Ahmed Madeh on 2/26/16.
//  Copyright © 2016 Ahmed Madeh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WishlistCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *wishlistPic;
@property (weak, nonatomic) IBOutlet UILabel *wishlistLable;
@property (weak, nonatomic) IBOutlet UILabel *wishlistPrice;

@end
