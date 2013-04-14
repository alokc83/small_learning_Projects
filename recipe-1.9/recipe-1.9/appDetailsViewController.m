//
//  appDetailsViewController.m
//  recipe-1.9
//
//  Created by Katie on 3/24/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import "appDetailsViewController.h"

@interface appDetailsViewController ()

@end

@implementation appDetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.nameLabel.text = self.appdetails.name;
    self.descriptionTextView.text = self.appdetails.description;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
