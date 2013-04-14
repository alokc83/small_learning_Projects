//
//  webViewViewController.m
//  webView
//
//  Created by Katie on 2/26/13.
//  Copyright (c) 2013 MappsApps Lab. All rights reserved.
//

#import "webViewViewController.h"

@interface webViewViewController ()

@end

@implementation webViewViewController

- (void)viewDidLoad
{
   NSString *urlAddress = @"www.google.com";
    
    //Creating the URL object
   // NSURL *url = [NSURL URLWithString:urlAddress];
    
    //URL Request object
  //  NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    
    //Load the request in the UIWebView
    //[_webView loadRequest:requestObj];
   
    /*
   #2
    CGRect webFrame = CGRectMake(0.0, 0.0, 320.0, 460.0);
    UIWebView *webView = [[UIWebView alloc] initWithFrame:webFrame];
    
    NSString *urlAddress = @"http://www.google.com";
    NSURL *url = [NSURL URLWithString:urlAddress];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
    //[self addSubview:webView];
    */
   
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 340.0)];
    NSURL *URL = [NSURL URLWithString:@"http://brewtimecaffe.com"];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:URL];
    webView.delegate = self ;
    [webView loadRequest:requestObj];
    [self.view addSubview:webView];
    
     \
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)myButtonAction:(UIButton *)sender {
    
    NSString *iTunesLink = @"http://www.itunes.com/app/fatcalc";
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:iTunesLink]];
}
@end
