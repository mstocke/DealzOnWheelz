//
//  Deal.h
//  DealzOnWheelz
//
//  Created by tstone10 on 6/1/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Deal : NSObject

@property (strong, nonatomic) NSString *dealName;
@property (strong, nonatomic) NSString *dealDescription;

- (id)initWithDealName:(NSString *)dealName andDescription:(NSString *)dealDescription;
+ (id)initWithDealName:(NSString *)dealName andDescription:(NSString *)dealDescription;

@end
