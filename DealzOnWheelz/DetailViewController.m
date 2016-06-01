//
//  DetailViewController.m
//  DealzOnWheelz
//
//  Created by tstone10 on 6/1/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "DetailViewController.h"
#import "Deal.h"
#import "Vehicle.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *vehicleImage;
@property (weak, nonatomic) IBOutlet UILabel *modelNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *offerOneLabel;
@property (weak, nonatomic) IBOutlet UILabel *offerTwoLabel;
@property (weak, nonatomic) IBOutlet UILabel *offerThreeLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _offerOneLabel.alpha = 0.0;
    _offerOneLabel.text = @"";
    _offerTwoLabel.alpha = 0.0;
    _offerThreeLabel.alpha = 0.0;
    [self createDealArray];
    [self assignDeals];
    // Do any additional setup after loading the view.
    
//    NSLog(@"Month = %@, Model = %@, Image = %@", _month, _vehicle.modelName, _vehicle.thumbnailImage);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createDealArray {
    Deal *dealOne = [[Deal alloc]initWithDealName:@"Summer Lease Pull-ahead" andDescription:@"Turn in your lease early and get a new car"];
    Deal *dealTwo = [[Deal alloc]initWithDealName:@"0% financing" andDescription:@"24 months same-as-cash"];
    Deal *dealThree = [[Deal alloc]initWithDealName:@"$175/mo for 36 month lease" andDescription:@"Great lease deal on a 36-month lease"];
    _deals = [NSArray arrayWithObjects:dealOne, dealTwo, dealThree, nil];
}

- (void)assignDeals {
    if ([_vehicle.modelName isEqualToString:@"Mustang"]) {
        _vehicle.dealsArray = [NSMutableArray arrayWithObjects:_deals[1], nil];
        NSLog(@"deals array for mustang is %lu", [_vehicle.dealsArray count]);
        Deal *mustangDealOne = _vehicle.dealsArray[0];
        _offerOneLabel.text = mustangDealOne.dealName;
        _offerOneLabel.alpha = 100.0;
        _vehicleImage.image = _vehicle.mainImage;
        _modelNameLabel.text = _vehicle.modelName;
    }
    
}

- (void)createDealsForMustang {
    
}

- (void)createDealsForEscape {
    
}

- (void)createDealsForFiesta {
    
}

- (void)createDealsForGT {
    
}

- (void)createDealsForRaptor {
    
}

- (void)createDealsForConnect {
    
}
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
