//
//  scrollViewTestViewController.h
//  scrollViewTest
//
//  Created by Katie on 3/5/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface scrollViewTestViewController : UIViewController <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollViewTest;

@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;

- (void)centerScrollViewContents;

@end
