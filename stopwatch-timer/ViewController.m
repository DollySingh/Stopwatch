//
//  ViewController.m
//  stopwatch-timer
//
//  Created by Student on 01/12/16.
//  Copyright © 2016 student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    _seclbl.text=@"00";
    _minlbl.text=@"00";
    _hrlbl.text=@"00";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)start:(id)sender {
    
    _stoptimer=[NSTimer scheduledTimerWithTimeInterval:1/10 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
}

-(void)updateTimer
{
    second ++;
    NSString *str=[[NSString alloc]initWithFormat:@"%d",second];
    _seclbl.text=str;
    
    if (second>59) {
        minute ++;
        NSString *str=[[NSString alloc]initWithFormat:@"%d",minute];
        _minlbl.text=str;
        second=0;
    }
    
    else if (minute>59) {
        hour ++;
        NSString *str=[[NSString alloc]initWithFormat:@"%d",hour];
        _hrlbl.text=str;
        minute=0;
    }
    

}

- (IBAction)stop:(id)sender {
    
    [_stoptimer invalidate];
}
@end
