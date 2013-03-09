//
//  rwscrollViewTestViewController.m
//  RW-ScrollViewTest
//
//  Created by Katie on 3/7/13.
//  Copyright (c) 2013 Mapps Lab. All rights reserved.
//

#import "rwscrollViewTestViewController.h"

@interface rwscrollViewTestViewController ()
@property (nonatomic,strong) UIImageView *imageView;

- (void)centerScrollViewContents;
- (void)scrollViewDoubleTapped:(UITapGestureRecognizer *) recognizer;
- (void)scrollViewTwoFingerTapped:(UITapGestureRecognizer *) recognizer;

@end

@implementation rwscrollViewTestViewController

//gotta remove this later
@synthesize scrollView = _scrollView;
@synthesize imageView = _imageView;


- (void) scrollViewTwoFingerTapped:(UITapGestureRecognizer *)recognizer
{
    // Zoom Out slightly, capping at the minimum zoom scale specified by the scroll view
    CGFloat newZoomScale = self.scrollView.zoomScale / 1.5f ;
    newZoomScale = MAX(newZoomScale, self.scrollView.minimumZoomScale);
    [self.scrollView setZoomScale:newZoomScale animated:YES];
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    //return the view that you want to zoom
    return self.imageView;
}

- (void) scrollViewDidZoom:(UIScrollView *)scrollView
{
    // the scroll view has zoomed, so you need to re-center the contents
    [self centerScrollViewContents];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //1
    UIImage *image = [UIImage imageNamed:@"photo1.png"];
    self.imageView = [[UIImageView alloc] initWithImage:image];
    self.imageView.frame = (CGRect) {.origin=CGPointMake(0.0f, 0.0f), .size=image.size};
        
    //2
    self.scrollView.contentSize = image.size;
    
    //3
    UITapGestureRecognizer *doubleTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollViewDoubleTapped:)];
    doubleTapRecognizer.numberOfTapsRequired = 2;
    doubleTapRecognizer.numberOfTouchesRequired = 1;
    [self.scrollView addGestureRecognizer:doubleTapRecognizer];
    
    UITapGestureRecognizer *twoFingerTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scrollViewTwoFingerTapped:)];
    twoFingerTapRecognizer.numberOfTapsRequired = 1;
    twoFingerTapRecognizer.numberOfTouchesRequired = 2;
    [self.scrollView addGestureRecognizer:twoFingerTapRecognizer];
    
}

- (void)viewDidAppear:(BOOL)animated
{
    //4
    CGRect scrollViewFrame = self.scrollView.frame;
    CGFloat scaleWidth = scrollViewFrame.size.width / self.scrollView.contentSize.width;
    CGFloat scaleHeight = scrollViewFrame.size.height / self.scrollView.contentSize.height;
    CGFloat minScale = MIN(scaleWidth, scaleHeight);
    self.scrollView.minimumZoomScale = minScale;
    
    //5
    self.scrollView.maximumZoomScale = 1.0f;
    self.scrollView.zoomScale = minScale;
    
    //6
    [self centerScrollViewContents];
}

//Custom method

- (void)centerScrollViewContents
{
    CGSize boundSize = self.scrollView.bounds.size;
    CGRect contentFrame = self.imageView.frame;
    
    if(contentFrame.size.width < boundSize.width)
    {
        contentFrame.origin.x = (boundSize.width - contentFrame.size.width)/2.0f;
    }else {
        contentFrame.origin.x = 0.0f;
    }

self.imageView.frame = contentFrame;
}

- (void) scrollViewDoubleTapped:(UITapGestureRecognizer *)recognizer
{
    //1
    CGPoint PointInView = [recognizer locationInView:self.imageView];
    
    //2
    CGFloat newZoomScale = self.scrollView.zoomScale * 1.5f;
    newZoomScale = MIN(newZoomScale, self.scrollView.maximumZoomScale);
    
    //3
    CGSize scrollViewSize = self.scrollView.bounds.size;
    
    CGFloat w = scrollViewSize.width / newZoomScale;
    CGFloat h = scrollViewSize.height / newZoomScale;
    CGFloat x = PointInView.x - ( w / 2.0f );
    CGFloat y = PointInView.y - ( h / 2.0f );
    
    CGRect rectToZoomTo = CGRectMake(x, y, w, h);
    
    //4
    [self.scrollView zoomToRect:rectToZoomTo animated:YES];
    
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
