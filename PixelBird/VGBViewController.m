//
//  VGBViewController.m
//  PixelBird
//
//  Created by Mac003 on 14-2-17.
//  Copyright (c) 2014年 Mac003. All rights reserved.
//

#import "VGBViewController.h"

@interface VGBViewController ()<UIWebViewDelegate, UIGestureRecognizerDelegate>

@property (nonatomic, strong) UIWebView *webView;

@end

@implementation VGBViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    CGRect bounds = [[self view] bounds];
    _webView = [[UIWebView alloc] initWithFrame: bounds];
    [[self view] addSubview: _webView];
    
    [_webView setDelegate: self];
    
    NSURL *fileURL = [[NSBundle mainBundle] URLForResource: @"game"
                                             withExtension: @"html"
                                              subdirectory: @"bird"];
    
    NSURLRequest *request = [NSURLRequest requestWithURL: fileURL];
    [_webView loadRequest: request];
//    
////    UIView *view = [[UIView alloc] initWithFrame: bounds];
////    [[self view] addSubview: view];
//    
//    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget: self
//                                                                                 action: @selector(_handleTappedEvent:)];
////    [tapGesture setNumberOfTapsRequired: 2];
//    [tapGesture setDelegate: self];
//    
//    [_webView addGestureRecognizer: tapGesture];
}

- (void)touchesBegan: (NSSet *)touches
           withEvent: (UIEvent *)event
{
    
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (BOOL)           webView: (UIWebView *)webView
shouldStartLoadWithRequest: (NSURLRequest *)request
            navigationType: (UIWebViewNavigationType)navigationType
{
    NSLog(@"%@", [request URL]);
    return YES;
}

- (void)     webView: (UIWebView *)webView
didFailLoadWithError: (NSError *)error
{
    NSLog(@"%@", error);
}

- (void)_handleTappedEvent: (id)sender
{
    [_webView stringByEvaluatingJavaScriptFromString: @"handleJumpStart();"];
}

- (BOOL)                         gestureRecognizer: (UIGestureRecognizer *)gestureRecognizer
shouldRecognizeSimultaneouslyWithGestureRecognizer: (UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}

@end
