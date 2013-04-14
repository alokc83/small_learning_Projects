//
//  iADViewController.m
//  iAD
//
//  Created by Katie on 4/5/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import "iADViewController.h"

@interface iADViewController ()

@end

@implementation iADViewController


-(void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    if(!self.bannerIsVisible){
        [UIView beginAnimations:@"AnimatedAdBanner" context:NULL];
        banner.frame = CGRectOffset(banner.frame, 0.0, 50.0);
        [UIView commitAnimations];
        self.bannerIsVisible = YES;
        
    }
}

-(void)bannerView(ADBannerView *)aBanner did




- (void)viewDidLoad
{
    adView = [[ADBannerView alloc] initWithFrame:CGRectZero];
    adView.frame = CGRectOffset(adView.frame, 0, 50);
   // adView.requiredContentSizeIdentifiers = [NSSet setWithObject:ADBannerContentSizeIdentifier480x32];
   // adView.currentContentSizeIdentifier = ADBannerContentSizeIdentifier320x50;
    [self.view addSubview:adView];
    adView.delegate=self;
    self.bannerIsVisible=YES;
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
