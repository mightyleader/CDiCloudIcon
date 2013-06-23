//
//  ViewController.m
//  CloudIconDemo
//
//  Created by Rob Stearn on 19/03/2013.
//  Copyright (c) 2013 Cocoadelica. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[_cloud1 setStrokeWidth:3.0];
  [_cloud1 setStrokeColour:@[[NSNumber numberWithInt:1.0],[NSNumber numberWithInt:1.0],[NSNumber numberWithInt:1.0],[NSNumber numberWithInt:1.0]]];
  
  [_cloud2 setStrokeWidth:2.0];
  [_cloud2 setStrokeColour:@[[NSNumber numberWithInt:1.0],[NSNumber numberWithInt:0.0],[NSNumber numberWithInt:0.0],[NSNumber numberWithInt:1.0]]];
  [_cloud2 setFillColour:@[[NSNumber numberWithInt:1.0],[NSNumber numberWithInt:0.0],[NSNumber numberWithInt:0.0],[NSNumber numberWithInt:0.0]]];
  [_cloud2 setShallFill:YES];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
