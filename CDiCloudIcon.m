//
//  CDiCloudIcon.m
//
//  Created by Robert Stearn on 17/07/2012.
//  Copyright (c) 2012 Cocoadelica. All rights reserved.
//

#import "CDiCloudIcon.h"

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
	[cloudPath setLineWidth:5];
	
	//inset the drawing rect by the line width * 0.5. Oh yeah.
	CGRect clipRect = CGRectMake(cloudPath.lineWidth, cloudPath.lineWidth, rect.size.width - cloudPath.lineWidth , rect.size.height - cloudPath.lineWidth);
	CGFloat maxX = clipRect.size.width;
	CGFloat maxY = clipRect.size.height;
	CGFloat offset = cloudPath.lineWidth * 0.5;
	[cloudPath addArcWithCenter:CGPointMake(maxX * 0.166666667 + offset, maxY * 0.7222 + offset) radius:maxX * 0.166666667 startAngle:1.574 endAngle:4.721 clockwise:YES];
	[cloudPath addArcWithCenter:CGPointMake(maxX * 0.2708 + offset, maxY * 0.4444 + offset) radius:maxX * 0.1 startAngle:3.3 endAngle:5.245 clockwise:YES];
	[cloudPath addArcWithCenter:CGPointMake(maxX * 0.5667 + offset, maxY * 0.44445 + offset) radius:maxY * 0.44445 startAngle:3.672 endAngle:0.0001 clockwise:YES];
	[cloudPath addArcWithCenter:CGPointMake(maxX * 0.833333333 + offset, maxY * 0.7222 + offset) radius:maxX * 0.166666667 startAngle:4.721 endAngle:1.574 clockwise:YES];
	
	[cloudPath closePath];
	[cloudPath stroke];
	//[cloudPath fill]; optional fill
}


@end
