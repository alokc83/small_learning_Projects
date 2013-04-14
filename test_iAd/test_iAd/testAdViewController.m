//
//  testAdViewController.m
//  test_iAd
//
//  Created by Katie on 4/12/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import "testAdViewController.h"

#define IS_IPHONE_5 ( [ [ UIScreen mainScreen ] bounds ].size.height == 568 )

@interface testAdViewController ()

@end

@implementation testAdViewController
{
    ADBannerView *_bannerView;
    ADBannerView *_bView;
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner
{
    if (!self.bannerIsVisible)
    {
        [UIView beginAnimations:@"animateAdBannerOn" context:NULL];
        // banner is invisible now and moved out of the screen on 50 px
        banner.frame = CGRectOffset(banner.frame, 0, 50);
        [UIView commitAnimations];
        self.bannerIsVisible = YES;
        _infoLabel.text = @"Banner is loaded with AD";
    }
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    if (self.bannerIsVisible)
    {
        [UIView beginAnimations:@"animateAdBannerOff" context:NULL];
        // banner is visible and we move it out of the screen, due to connection issue
        banner.frame = CGRectOffset(banner.frame, 0, -50);
        [UIView commitAnimations];
        self.bannerIsVisible = NO;
        _infoLabel.text = @"Banner is not loaded with AD";
    }
}

- (void)viewDidLoad
{
    _iAdView.hidden = YES;
    
    // iPhone 5 screen
    if (IS_IPHONE_5){//568 == [[ UIScreen mainScreen ] bounds ].size.height) {
        //show ad
        _iAdView.hidden = NO;
        if (self)
        {
            // On iOS 6 ADBannerView introduces a new initializer, use it when available.
            if ([ADBannerView instancesRespondToSelector:@selector(initWithAdType:)])
            {
                _bannerView = [[ADBannerView alloc] initWithAdType:ADAdTypeBanner];
            }
            else
            {
                _bannerView = [[ADBannerView alloc] init];
            }
            _bannerView.delegate = self;
        }
        

        
        if(_iAdView.isBannerLoaded)
        {
            _iAdView = [[ADBannerView alloc] initWithAdType:ADAdTypeBanner];
            _iAdView.delegate = self;
        }
        else{
           // _infoLabel.text = @"Banner is not loaded with AD";
        }
    
    } else {
        _infoLabel.text = @"Not iPhone 5 so not showing the Ad Banner";
    }
    
   
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setIAdView:nil]; // deallocing as adView was strong pointer
    [super viewDidUnload];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
