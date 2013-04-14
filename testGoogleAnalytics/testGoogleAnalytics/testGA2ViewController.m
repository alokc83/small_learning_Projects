//
//  testGA2ViewController.m
//  testGoogleAnalytics
//
//  Created by Katie on 4/12/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import "testGA2ViewController.h"

@interface testGA2ViewController ()

@end

@implementation testGA2ViewController

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
    
    self.trackedViewName = @"Seconf Tab";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
