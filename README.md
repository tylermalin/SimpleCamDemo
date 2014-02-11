#SimpleCam

##A Memory Efficient Drop In Replacement for UIImagePicker
<p align="center">
<b>**Note - An actual device is required for testing camera capabilities**</b>
</p>

<p align="center">
  <img src="https://github.com/LoganWright/SimpleCamDemo/blob/master/SimpleCamDemo/SimpleCamScreenShots/SimpleCamHeader.jpg?raw=true"><img />
</p>

###What Is SimpleCam?

Do you have a project that you want to include photo taking capabilities, but it’s not the prime focus of your app and you don’t want to spend a lot of time developing it, then SimpleCam is perfect for you.

If you’ve tried the native UIImagePicker, then you have probably already found out that it can be slow to load, it uses a lot of memory, and it often returns image files that are either unnecessarily large or very poor resolution. This is where SimpleCam is best. It loads quickly, it uses minimal memory, and it returns an image that is significantly reduced in file size while still maintaining crystal clear photo capabilities.

Save yourself the development time dealing with AVFoundation and take advantage of SimpleCam today. With its clean and elegant design, this camera is ready to be dropped into any project with just a few lines of code.

###Why Do I Need It?

SimpleCam was created out of the necessity to have high quality photographs while providing a lightweight memory footprint.  Apple's UIImagePicker is a wonderful application, but because it has a lot of features and a lot of options, . . . it uses a lot of MEMORY.  This can cause crashes, lag, and an overall poor user experience when all you wanted was to give the user an opportunity to take a quick picture.

If you're capturing photographs with UIImagePicker, or via AVFoundation on the highest possible capture resolution, it will return giant image files exceeding thousands of pixels in size.  SimpleCam avoids this while still using the highest possible capture resolution by resizing the photo to 2x the size of the phone's screen.  This allows the photo to maintain a significantly reduced file size while still looking clean and brilliant on mobile displays.

In addition to this resizing, we also handle a bit of cropping that you and the user shouldn't even notice!  If you look at the iOS native Camera, you'll notice the black portions on the top and bottom of the screen.  This is because the camera actually captures at a 4:3  resolution.  This means that to display a fullscreen view for the user, the camera will have a bit of extra space around the edges that needs to be removed.  When designing simpleCam, we felt that if a user sees a fullscreen imageCapture on their phone, that's what they're expecting their image to be.  This is exactly what we deliver.

We hope you find the project as useful as we did, and we'll continue to add more features including more customization options. 

###Features

- iOS 7 Inspired Design 
- 3.5” & 4” Screen Compatibility 
- Low Memory Usage
- Drag & Drop Installation 
- Portrait/Landscape Views 
- Front/Rear Camera 
- Touch to Focus 
- Controllable Flash

#Adding SimpleCam to Your Project

###1. Add SimpleCamSDK to Xcode

- Unzip SimpleCamSDK
- Drag SimpleCamSDK into your Xcode project
- Make sure "Copy items into destination group's folder (if needed)" is selected

<p align="center">
  <img src="https://github.com/LoganWright/SimpleCamDemo/blob/master/SimpleCamDemo/AddingSimpleCamSDK.gif?raw=true" width=600></img> 
</p>

###2. Your ViewController.h File

- Import SimpleCam
- Set up your view controller as a simpleCam delegate

```Obj-C
#import <UIKit/UIKit.h>
#import "SimpleCam.h"

@interface ViewController : UIViewController <SimpleCamDelegate>

@end
```

<p align="center">
  <img src="https://github.com/LoganWright/SimpleCamDemo/blob/master/SimpleCamDemo/ViewControllerHeader.gif?raw=true"><img />
</p>

###3. Set Up Delegate

- Add SimpleCam's Delegate method to your ViewController.m file

```Obj-C
#pragma mark SIMPLE CAM DELEGATE

- (void) closeSimpleCamWithImage:(UIImage *)image {
    if (image) {
        // closed with image
    }
    else {
        // user backed out w/o image
    }
}
```

This is how SimpleCam will notify your ViewController that the user is finished with it.  If there is an image, then the user took a picture.  If there is not, then the user backed out of the camera without taking a photograph.

<p align="center">
  <img src="https://github.com/LoganWright/SimpleCamDemo/blob/master/SimpleCamDemo/SetUpDelegate.gif?raw=true" width=750></img> 
</p>

###4. Launch SimpleCam

- Add this code wherever you'd like SimpleCam to launch

```Obj-C
SimpleCam * simpleCam = [[SimpleCam alloc]init];
simpleCam.delegate = self;    
[self presentViewController:simpleCam animated:YES completion:nil];
```
If you'd like to launch simple cam when the user presses a button, you could add the above code to the IBAction method, like so:

```Obj-C
-(IBAction)buttonPress:(id)sender
{        
  SimpleCam * simpleCam = [[SimpleCam alloc]init];
  simpleCam.delegate = self;    
  [self presentViewController:simpleCam animated:YES completion:nil];
}
```
That's it, it's as  simple as that.  SimpleCam will take care of everything else.

#Screen Shots

###Portrait

<h5 align="center">Camera (About To Capture)</h5>
<p align="center">
  <img src="https://github.com/LoganWright/SimpleCamDemo/blob/master/SimpleCamDemo/SimpleCamScreenShots/portrait_Camera.png?raw=true" width=320></img> 
</p>

<h5 align="center">Preview (Shows Captured Image)</h5>
<p align="center">
  <img src="https://github.com/LoganWright/SimpleCamDemo/blob/master/SimpleCamDemo/SimpleCamScreenShots/portrait_Preview.png?raw=true" width=320></img> 
</p>

<h5 align="center">Preview - Rotated (Maintains Captured Image Ratio)</h5>
<p align="center">
  <img src="https://github.com/LoganWright/SimpleCamDemo/blob/master/SimpleCamDemo/SimpleCamScreenShots/portrait_RotatedPreview.png?raw=true" width=568></img> 
</p>


###Landscape

<h5 align="center">Camera (About To Capture)</h5>
<p align="center">
  <img src="https://github.com/LoganWright/SimpleCamDemo/blob/master/SimpleCamDemo/SimpleCamScreenShots/landscape_Camera.png?raw=true" width=568></img> 
</p>

<h5 align="center">Preview (Shows Captured Image)</h5>
<p align="center">
  <img src="https://github.com/LoganWright/SimpleCamDemo/blob/master/SimpleCamDemo/SimpleCamScreenShots/landscape_Preview.png?raw=true" width=568></img> 
</p>

<h5 align="center">Preview - Rotated (Maintains Captured Image Ratio)</h5>
<p align="center">
  <img src="https://github.com/LoganWright/SimpleCamDemo/blob/master/SimpleCamDemo/SimpleCamScreenShots/landscape_RotatedPreview.png?raw=true" width=320></img> 
</p>
