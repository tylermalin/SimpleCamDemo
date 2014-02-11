//
//  SimpleCam.h
//  SimpleCam
//
//  Created by Logan Wright on 2/1/14.
//  Copyright (c) 2014 Logan Wright. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@protocol SimpleCamDelegate

- (void) closeSimpleCamWithImage:(UIImage *)image;

@end

@interface SimpleCam : UIViewController

@property (retain, nonatomic) id <SimpleCamDelegate> delegate;

@end
