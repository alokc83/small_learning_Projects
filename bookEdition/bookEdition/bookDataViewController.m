//
//  bookDataViewController.m
//  bookEdition
//
//  Created by Katie on 4/7/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import "bookDataViewController.h"

@interface bookDataViewController ()

@end

@implementation bookDataViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.dataLabel.text = [self.dataObject description];
}

@end
