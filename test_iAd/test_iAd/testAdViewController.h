//
//  testAdViewController.h
//  test_iAd
//
//  Created by Katie on 4/12/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>


@interface testAdViewController : UIViewController <ADBannerViewDelegate>

@property (nonatomic, copy) NSString *text;
@property(nonatomic, assign)BOOL bannerIsVisible;
//@property (strong, nonatomic) IBOutlet ADBannerView *iAdView;
@property (strong, nonatomic) IBOutlet ADBannerView *iAdView;

@property (weak, nonatomic) IBOutlet UILabel *infoLabel;



@end
