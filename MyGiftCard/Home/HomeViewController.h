//
//  HomeViewController.h
//  MyGiftCard
//
//  Created by Ahmed Madeh on 2/26/16.
//  Copyright © 2016 Ahmed Madeh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeCollectionViewCell.h"
#import "CardDetailsViewController.h"

@interface HomeViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *homeCollection;

@end
