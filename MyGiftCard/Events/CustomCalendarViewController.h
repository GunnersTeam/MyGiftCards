//
//  CustomCalendarViewController.h
//  sampleCalendar
//
//  Created by Michael Azevedo on 21/07/2014.
//  Copyright (c) 2014 Michael Azevedo All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalendarView.h"
#import "EventsTableViewCell.h"

@interface CustomCalendarViewController : UIViewController <CalendarDataSource, CalendarDelegate, UITableViewDataSource, UITableViewDelegate>

@end
