//
//  ViewController.h
//  stopwatch-timer
//
//  Created by Student on 01/12/16.
//  Copyright © 2016 student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    int second,minute,hour;
}

@property (weak, nonatomic) IBOutlet UILabel *minlbl;

@property (weak, nonatomic) IBOutlet UILabel *hrlbl;

@property (weak, nonatomic) IBOutlet UILabel *seclbl;

@property (weak, nonatomic) IBOutlet UISlider *slider;

- (IBAction)start:(id)sender;

- (IBAction)stop:(id)sender;

@property(nonatomic,retain)NSTimer *stoptimer;










@end

