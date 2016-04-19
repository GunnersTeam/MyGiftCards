//
//  HomeCollectionViewCell.h
//  MyGiftCard
//
//  Created by Ahmed Madeh on 2/26/16.
//  Copyright © 2016 Ahmed Madeh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *homePic;
@property (weak, nonatomic) IBOutlet UILabel *homeLable;
@property (weak, nonatomic) IBOutlet UILabel *homePriceLable;

@end
