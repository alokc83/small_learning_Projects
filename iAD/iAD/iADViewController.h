//
//  iADViewController.h
//  iAD
//
//  Created by Katie on 4/5/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>

@interface iADViewController : UIViewController <ADBannerViewDelegate>
{
    ADBannerView *adView;
    ADBannerView *banner;
    BOOL bannerIsVisible;
}
@property (nonatomic,assign) BOOL bannerIsVisible;
@property (nonatomic, assign) IBOutlet ADBannerView *banner;

@end
