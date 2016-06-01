//
//  VehicleTableViewController.m
//  DealzOnWheelz
//
//  Created by tstone10 on 6/1/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

#import "VehicleTableViewController.h"
#import "DetailViewController.h"

@interface VehicleTableViewController ()

@end

@implementation VehicleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createVehicleArray];
    NSLog(@"month = %@", _month);
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createVehicleArray {
    Vehicle *mustang = [[Vehicle alloc]initWithModelName:@"Mustang" andThumbnailImage:[UIImage imageNamed:@"red_mustang_1.jpg"] andMainImage:[UIImage imageNamed:@"red_mustang_1.jpg"]];
    Vehicle *escape = [[Vehicle alloc]initWithModelName:@"Escape" andThumbnailImage:[UIImage imageNamed:@"gold_escape_1.jpg"] andMainImage:[UIImage imageNamed:@"gold_escape_1.jpg"]];
    Vehicle *raptor = [[Vehicle alloc]initWithModelName:@"Raptor" andThumbnailImage:[UIImage imageNamed:@"white_raptor_1.jpg"] andMainImage:[UIImage imageNamed:@"white_raptor_1.jpg"]];
    Vehicle *gt = [[Vehicle alloc]initWithModelName:@"GT" andThumbnailImage:[UIImage imageNamed:@"blue_gt_1.jpg"] andMainImage:[UIImage imageNamed:@"blue_gt_1.jpg"]];
    Vehicle *fiestast = [[Vehicle alloc]initWithModelName:@"Fiesta ST" andThumbnailImage:[UIImage imageNamed:@"orange_fiesta_1.jpg"] andMainImage:[UIImage imageNamed:@"orange_fiesta_1.jpg"]];
    Vehicle *connect = [[Vehicle alloc]initWithModelName:@"Transit Connect" andThumbnailImage:[UIImage imageNamed:@"red_connect_1.jpg"] andMainImage:[UIImage imageNamed:@"red_connect_1.jpg"]];
    
    _vehicles = [NSArray arrayWithObjects:mustang, escape, raptor, gt, fiestast, connect, nil];
    NSLog(@"Vehicle name = %@", mustang.modelName);
    NSLog(@"Vehicle: %@", _vehicles[0]);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_vehicles count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"vehicleCell" forIndexPath:indexPath];
    Vehicle *currentVehicle = [_vehicles objectAtIndex:indexPath.row];
    cell.textLabel.text = currentVehicle.modelName;
    cell.imageView.image = currentVehicle.thumbnailImage;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    DetailViewController *vc = [segue destinationViewController];
    NSIndexPath *selectedRowIndex = [self.tableView indexPathForSelectedRow];
    vc.month = _month;
    vc.vehicle = [_vehicles objectAtIndex:selectedRowIndex.row];
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
