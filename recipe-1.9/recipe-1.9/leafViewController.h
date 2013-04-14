//
//  leafViewController.h
//  recipe-1.9
//
//  Created by Katie on 3/25/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface leafViewController : UIViewController <UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *filePathLabel;

@property (weak, nonatomic) IBOutlet UIWebView *leafWebView;
@end
