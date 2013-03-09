//
//  webViewViewController.h
//  webView
//
//  Created by Katie on 2/26/13.
//  Copyright (c) 2013 MappsApps Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface webViewViewController : UIViewController <UIWebViewDelegate>

 @property (weak, nonatomic) IBOutlet UIWebView *webView;   

@end
