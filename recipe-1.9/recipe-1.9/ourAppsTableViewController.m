//
//  ourAppsTableViewController.m
//  recipe-1.9
//
//  Created by Katie on 3/24/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import "ourAppsTableViewController.h"
#import "appDetailsViewController.h"
#import "appDetails.h"

@interface ourAppsTableViewController ()

@end

@implementation ourAppsTableViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSString *name;
    NSString *description;
    
    if ([segue.identifier isEqualToString:@"pushAppDetailsFromCell1"]) {
        name = @"Awesome app 1";
        description = @"long description goes here. say something blah blah blah...";
    }
    else if ([segue.identifier isEqualToString:@"pushAppDetailsFromCell2"]) {
        name = @"Awesome app 2";
        description = @"lomng long ago there was a long description goes here. say something blah blah blah...";
    }
    else if ([segue.identifier isEqualToString:@"pushAppDetailsFromCell3"]) {
        name = @"Awesome app 1";
        description = @"long description goes here. say something blah blah blah...";
    }
    else if ([segue.identifier isEqualToString:@"pushAppDetailsFromCell4"]) {
        name = @"Awesome app 1";
        description = @"app 4 long description goes here. say something blah blah blah...";
    }
    else
    {
        return;
    }

    appDetailsViewController *appdetailsViewController = segue.destinationViewController;
    
    appdetailsViewController.appdetails = [[appDetails alloc] initWithName:name description:description];
    


}

/////////////////////////////////////////////////////////////////////

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end
