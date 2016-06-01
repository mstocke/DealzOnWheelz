//
//  Vehicle.m
//  DealzOnWheelz
//
//  Created by tstone10 on 6/1/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

- (void) createDeal {
    Deal *newDeal = [[Deal alloc]initWithDealName:@"Poopy Cash" andDescription:@"$1,000,000"];
    NSLog(@"Deal name = %@, Deal description = %@", newDeal.dealName, newDeal.dealDescription);
}

@end
