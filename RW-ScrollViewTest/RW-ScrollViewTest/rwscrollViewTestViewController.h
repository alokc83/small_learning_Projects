//
//  rwscrollViewTestViewController.h
//  RW-ScrollViewTest
//
//  Created by Katie on 3/7/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface rwscrollViewTestViewController : UIViewController <UIScrollViewDelegate>

//programatically making scrollview
@property (nonatomic,strong) IBOutlet UIScrollView *scrollView;

@end
