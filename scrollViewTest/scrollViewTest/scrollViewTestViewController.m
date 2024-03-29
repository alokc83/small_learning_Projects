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

//@synthesize scrollViewTest = _scrollViewTest;
//@synthesize containerView = _containerView;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Setting up the containerView to hold the hierarchy
    CGSize containerSize = CGSizeMake(320.0f, 700.0f);
    self.containerView = [[UIView alloc]initWithFrame:(CGRect){.origin=CGPointMake(0.0f, 0.0f), .size=containerSize}];
    [self.scrollViewTestB addSubview:self.containerView];
    
    self.scrollViewTestB.contentSize = containerSize;
    // End of section
    

    
}


- (void)viewDidAppear:(BOOL)animated
{
   
    
    [super viewDidAppear:animated];
////
    
    CGSize containerSize = CGSizeMake(320.0f, 700.0f);
    self.containerView = [[UIView alloc]initWithFrame:(CGRect){.origin=CGPointMake(0.0f, 0.0f), .size=containerSize}];
    [self.scrollViewTestB addSubview:self.containerView];
    
    self.scrollViewTestB.contentSize = containerSize;
////
   
    _scrollViewTest.contentInset=UIEdgeInsetsMake(0.0,0.0,0.0,0.0);
    _scrollViewTest.scrollIndicatorInsets=UIEdgeInsetsMake(0.0,0.0,0.0,0.0);
    
    // B scroll view
    _scrollViewTestB.contentInset=UIEdgeInsetsMake(0.0,0.0,0.0,0.0);
    _scrollViewTestB.scrollIndicatorInsets=UIEdgeInsetsMake(0.0,0.0,0.0,0.0);
    
    [self.scrollViewTest setContentSize:CGSizeMake(320, 1450)]; // this make the scrolling area
    
    //B scroll view
    
    [self.scrollViewTestB setContentSize:CGSizeMake(320, 1450)];
    
   
}

- (void)viewDidLayoutSubviews // very very Important
{
    [super viewDidLayoutSubviews];
    self.scrollViewTest.contentSize = CGSizeMake(320.0f, 950.0f);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
