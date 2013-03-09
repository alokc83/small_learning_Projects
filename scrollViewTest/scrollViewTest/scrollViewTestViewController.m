//
//  scrollViewTestViewController.m
//  scrollViewTest
//
//  Created by Katie on 3/5/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import "scrollViewTestViewController.h"

@interface scrollViewTestViewController ()

@property (nonatomic, strong) UIView *containerView;

@end

@implementation scrollViewTestViewController

@synthesize scrollViewTest = _scrollViewTest;
@synthesize containerView = _containerView;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Setting up the containerView to hold the hierarchy
    CGSize containerSize = CGSizeMake(320.0f, 700.0f);
    self.containerView = [[UIView alloc]initWithFrame:(CGRect){.origin=CGPointMake(0.0f, 0.0f), .size=containerSize}];
    [self.scrollViewTest addSubview:self.containerView];
    
    // End of section
    
    //Setting up the custom Hierarchy
    
    
}

- (void)viewDidAppear:(BOOL)animated
{
   
    
    [super viewDidAppear:animated];
    // _howtoScrollView.frame = CGRectMake(0, 0, 320, 460);
    //_scrollViewTest.scrollEnabled = YES;
    //UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
   
    _scrollViewTest.contentInset=UIEdgeInsetsMake(0.0,0.0,0.0,0.0);
    _scrollViewTest.scrollIndicatorInsets=UIEdgeInsetsMake(0.0,0.0,0.0,0.0);
    //[self.scrollViewTest addSubview:self.image1];
    //[self.view addSubview:self.scrollViewTest];
    [self.scrollViewTest addSubview:self.image2];

    //[self.scrollViewTest setContentSize:CGSizeMake(self.scrollViewTest.frame.size.width, 1000)];
    [self.scrollViewTest setContentSize:CGSizeMake(320, 4000)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
