//
//  ViewController.m
//  SimpleCamDemo
//
//  Created by Logan Wright on 2/10/14.
//  Copyright (c) 2014 Logan Wright. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UILabel * tapInfoLabel;
    UIImageView * imageView;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc]init];
    [tap addTarget:self action:@selector(handleTap:)];
    [self.view addGestureRecognizer:tap];
    
    tapInfoLabel = [[UILabel alloc]init];
    tapInfoLabel.bounds = CGRectMake(0, 0, 200, 200);
    tapInfoLabel.center = self.view.center;
    tapInfoLabel.text = @"Tap Anywhere To Open Camera";
    tapInfoLabel.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:tapInfoLabel];
    
    imageView = [[UIImageView alloc]init];
    imageView.frame = CGRectMake(25, 25, self.view.bounds.size.width - 50, self.view.bounds.size.height - 50);
    imageView.backgroundColor = [UIColor clearColor];
    imageView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imageView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark TAP GESTURE RECOGNIZER

- (void) handleTap:(UITapGestureRecognizer *)tap {
    // remove the notification
    if (tapInfoLabel) {
        [tapInfoLabel removeFromSuperview];
        tapInfoLabel = nil;
    }
    
    SimpleCam * simpleCam = [[SimpleCam alloc]init];
    simpleCam.delegate = self;
    
    // If you'd like to use a square version
    // simpleCam.isSquareMode = YES;
    //
    
    [self presentViewController:simpleCam animated:YES completion:nil];
}

#pragma mark SIMPLE CAM DELEGATE

- (void) closeSimpleCamWithImage:(UIImage *)image {
    if (image) {
        // closed with image
        imageView.image = image;
    }
    else {
        // user backed out w/o image
    }
}

@end
