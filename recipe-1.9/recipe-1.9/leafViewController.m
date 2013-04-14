//
//  leafViewController.m
//  recipe-1.9
//
//  Created by Katie on 3/25/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import "leafViewController.h"

@interface leafViewController ()

@end

@implementation leafViewController

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
// #1
   // NSString *filePath = [[NSString stringWithFormat:@"%@/%@", [[NSBundle mainBundle] resourcePath], @"HanumanAartiHindi.html"]];
   // _filePathLabel.text = filePath;
   // [yourWebView loadRequest:[NSURLRequest initWithURL:[NSUrl initWithString:filePath]]];
    
    
    // #2
    
 //NSString *path = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
/*    NSString *path = [[NSBundle mainBundle] pathForResource:@"DurgaAartiHindi" ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:path isDirectory:NO];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    
    _leafWebView.delegate = self;
    [_leafWebView loadRequest:request]; */
    
   // NSString *path = @"http://pebble-static.s3.amazonaws.com/watchfaces/index.html";
    
    
  //  _filePathLabel.text = path;
  //  NSURL *url = [NSURL URLWithString:attractionURL];
   // [wikiView loadRequest:[NSURLRequest requestWithURL:url]];
    
  //  [_leafWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:path]]];
 //   _leafWebView.delegate = self;
    
    //food page
 /*NSString *path = @"http://pebble-static.s3.amazonaws.com/watchfaces/index.html";

    NSURL *url=[NSURL URLWithString:path];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    _leafWebView.delegate = self;
    [_leafWebView loadRequest:request];
    
  */  
   
    
  // One Liner to load page. 
    //  [_leafWebView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"HanumanAartiHindi" ofType:@"html"]isDirectory:NO]]];
    

    
}

- (void)viewDidLayoutSubviews
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"DurgaAartiHindi" ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:path isDirectory:NO];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    
    _leafWebView.delegate = self;
    [_leafWebView loadRequest:request];
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
