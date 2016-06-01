//
//  VehicleTableViewController.h
//  DealzOnWheelz
//
//  Created by tstone10 on 6/1/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Vehicle.h"

@interface VehicleTableViewController : UITableViewController

@property(strong, nonatomic)NSArray *vehicles;
@property(strong, nonatomic)NSString *month;

- (void)createVehicleArray;

@end
