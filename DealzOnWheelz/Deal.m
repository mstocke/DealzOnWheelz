//
//  Deal.m
//  DealzOnWheelz
//
//  Created by tstone10 on 6/1/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "Deal.h"

@implementation Deal

- (id)initWithDealName:(NSString *)dealName andDescription:(NSString *)dealDescription {
    self = [super init];
    if (self) {
        _dealName = dealName;
        _dealDescription = dealDescription;
    }
    return self;
}

+ (id)initWithDealName:(NSString *)dealName andDescription:(NSString *)dealDescription {
    return [[self alloc]initWithDealName:dealName andDescription:dealDescription];
}

@end
