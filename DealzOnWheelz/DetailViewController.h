//
//  DetailViewController.h
//  DealzOnWheelz
//
//  Created by tstone10 on 6/1/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Vehicle.h"
#import "Deal.h"

@interface DetailViewController : UIViewController

@property(strong, nonatomic)NSString *month;
@property(strong, nonatomic)Vehicle *vehicle;
@property(strong,nonatomic)NSArray *deals;

- (void)assignDeals;
- (void)createDealArray;
- (void)createDealsForMustang;
- (void)createDealsForRaptor;
- (void)createDealsForEscape;
- (void)createDealsForGT;
- (void)createDealsForConnect;
- (void)createDealsForFiesta;

@end
