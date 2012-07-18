//
//  CDiCloudIcon.m
//
//  Created on 17/07/2012.
//  Copyright (c) 2012 Cocoadelica. All rights reserved.
//

#import "CDiCloudIcon.h"
#define GMX CGRectGetMaxX(self.bounds)
#define GMY CGRectGetMaxY(self.bounds)

@implementation CDiCloudIcon

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
	CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(context, 1.0, 1.0, 1.0, 1.0);
	CGContextSetRGBFillColor(context, 1.0, 1.0, 1.0, 1.0);
	
    UIBezierPath *cloudPath = [UIBezierPath bezierPath];
	[cloudPath addArcWithCenter:CGPointMake(GMX * 0.166666667, GMY * 0.7222) radius:GMX * 0.166666667 startAngle:1.574 endAngle:4.721 clockwise:YES];
	[cloudPath addArcWithCenter:CGPointMake(GMX * 0.2708, GMY * 0.4444) radius:GMX * 0.1 startAngle:3.147 endAngle:5.245 clockwise:YES];
	[cloudPath addArcWithCenter:CGPointMake(GMX * 0.5667, GMY * 0.44445) radius:GMY * 0.44445 startAngle:3.672 endAngle:0.0001 clockwise:YES];
	[cloudPath addArcWithCenter:CGPointMake(GMX * 0.833333333, GMY * 0.7222) radius:GMX * 0.166666667 startAngle:4.721 endAngle:1.574 clockwise:YES];
	[cloudPath setLineWidth:0.5];
	[cloudPath closePath];
	[cloudPath stroke];
	[cloudPath fill];
}


@end
