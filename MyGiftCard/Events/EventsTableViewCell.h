//
//  EventsTableViewCell.h
//  MyGiftCard
//
//  Created by Ahmed Madeh on 2/26/16.
//  Copyright © 2016 Ahmed Madeh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EventsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *eventPic;
@property (weak, nonatomic) IBOutlet UILabel *eventLable;
@property (weak, nonatomic) IBOutlet UILabel *eventDate;

@end
