//
//  ViewController.m
//  SimpleCamDemo
//
//  Created by Logan Wright on 2/10/14.
//  Copyright (c) 2014 Logan Wright. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    SimpleCam * simpleCam = [[SimpleCam alloc]init];
    simpleCam.delegate = self;
    [self presentViewController:simpleCam animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark SIMPLE CAM DELEGATE

- (void) closeSimpleCamWithImage:(UIImage *)image {
    if (image) {
        // closed with image
    }
    else {
        // user backed out w/o image
    }
}

@end
