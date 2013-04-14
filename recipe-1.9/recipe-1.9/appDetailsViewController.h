//
//  appDetailsViewController.h
//  recipe-1.9
//
//  Created by Katie on 3/24/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "appDetails.h"

@interface appDetailsViewController : UIViewController

@property(weak, nonatomic) IBOutlet UILabel *nameLabel;

@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;

@property (strong, nonatomic) appDetails *appdetails;

@end
