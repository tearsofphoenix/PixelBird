//
//  VGBAppDelegate.m
//  PixelBird
//
//  Created by Mac003 on 14-2-17.
//  Copyright (c) 2014年 Mac003. All rights reserved.
//

#import "VGBAppDelegate.h"
#import "VGBViewController.h"

@implementation VGBAppDelegate

- (BOOL)          application: (UIApplication *)application
didFinishLaunchingWithOptions: (NSDictionary *)launchOptions
{
    CGRect bounds = [[UIScreen mainScreen] bounds];
    _window = [[UIWindow alloc] initWithFrame: bounds];
    
    VGBViewController *viewController = [[VGBViewController alloc] init];
    
    [_window setRootViewController: viewController];
    
    [_window makeKeyAndVisible];
    return YES;
}

@end
