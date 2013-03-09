//
//  localizedAppViewController.m
//  localizationApp
//
//  Created by Katie on 3/3/13.
//  Copyright (c) 2013 MappsApps Lab. All rights reserved.
//

#import "localizedAppViewController.h"

@interface localizedAppViewController ()

@end

@implementation localizedAppViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.greetingLabel.text = NSLocalizedString(@"GREET", nil);

    //[self.thxButton setTitle:@"thanks" forState:UIControlStateNormal];
    NSString *thanks = NSLocalizedString(@"THANKS", nil);
    [self.thxButton setTitle:thanks forState:UIControlStateNormal]  ;
   // _thxButton.setTitle = NSLocalizedString(@"GREET", nil);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
