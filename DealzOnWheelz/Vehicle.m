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

- (id)initWithModelName:(NSString *)modelName andThumbnailImage:(UIImage *)thumbnailImage andMainImage:(UIImage *)mainImage {
    self = [super init];
    if (self) {
        _modelName = modelName;
        _thumbnailImage = thumbnailImage;
        _mainImage = mainImage;
        _dealsArray = [[NSMutableArray alloc]init];
    }
    return self;
}

+ (id)initWithModelName:(NSString *)modelName andThumbnailImage:(UIImage *)thumbnailImage andMainImage:(UIImage *)mainImage {
    return [[self alloc]initWithModelName:modelName andThumbnailImage:thumbnailImage andMainImage:mainImage];
}

@end
