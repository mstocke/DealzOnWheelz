//
//  Vehicle.h
//  DealzOnWheelz
//
//  Created by tstone10 on 6/1/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deal.h"
#import <UIKit/UIKit.h>

@interface Vehicle : NSObject

@property (strong, nonatomic) UIImage *thumbnailImage;
@property (strong, nonatomic) UIImage *mainImage;
@property (strong, nonatomic) NSString *modelName;
@property (strong, nonatomic) NSMutableArray *dealsArray;

- (void)createDeal;

@end
