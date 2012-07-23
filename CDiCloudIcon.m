//
//  CDiCloudIcon.m
//
//  Created by Robert Stearn on 17/07/2012.
//  Copyright (c) 2012 Cocoadelica. All rights reserved.
//

#import "CDiCloudIcon.h"

@implementation CDiCloudIcon

@synthesize strokeWidth, strokeColour, fillColour, shallFill;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) 
	{
        [self setBackgroundColor:[UIColor clearColor]];
		self.shallFill = NO;
		self.strokeWidth = 3.0;
		self.strokeColour = [NSArray arrayWithObjects:[NSNumber numberWithFloat:1.0], [NSNumber numberWithFloat:1.0], [NSNumber numberWithFloat:1.0], [NSNumber numberWithFloat:1.0], nil];
		self.fillColour = [NSArray arrayWithObjects:[NSNumber numberWithFloat:1.0], [NSNumber numberWithFloat:1.0], [NSNumber numberWithFloat:1.0], [NSNumber numberWithFloat:1.0], nil];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame withFill:(NSArray *)fill withStroke:(NSArray *)stroke andLinewidth:(CGFloat)lineWidth shouldFill:(BOOL)shouldFill
{
	self = [super initWithFrame:frame];
    if (self) 
	{
		[self setBackgroundColor:[UIColor clearColor]];
		if (fill) 
			{
				self.fillColour = [NSArray arrayWithArray:fill];
			} else {
				self.fillColour = [NSArray arrayWithObjects:[NSNumber numberWithFloat:1.0], [NSNumber numberWithFloat:1.0], [NSNumber numberWithFloat:1.0], [NSNumber numberWithFloat:1.0], nil];
			}
		if (stroke) 
			{
				self.strokeColour = [NSArray arrayWithArray:stroke];
			} else {
				self.strokeColour = [NSArray arrayWithObjects:[NSNumber numberWithFloat:1.0], [NSNumber numberWithFloat:1.0], [NSNumber numberWithFloat:1.0], [NSNumber numberWithFloat:1.0], nil];
			}
		if (shouldFill) 
			{
				self.shallFill = YES;
			} else {
				self.shallFill = NO;
			}
		if (lineWidth) 
			{
				self.strokeWidth = lineWidth;
			} else {
				self.strokeWidth = 3.0;
			}
	}
	return self;
}


- (void)drawRect:(CGRect)rect
{
	CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetRGBStrokeColor(context, [[self.strokeColour objectAtIndex:0] floatValue], [[self.strokeColour objectAtIndex:1] floatValue], [[self.strokeColour objectAtIndex:2] floatValue], [[self.strokeColour objectAtIndex:3] floatValue]);
	CGContextSetRGBFillColor(context, [[self.fillColour objectAtIndex:0] floatValue], [[self.fillColour objectAtIndex:1] floatValue], [[self.fillColour objectAtIndex:2] floatValue], [[self.fillColour objectAtIndex:3] floatValue]);
	
    UIBezierPath *cloudPath = [UIBezierPath bezierPath];
	[cloudPath setLineWidth:self.strokeWidth];
	[cloudPath setLineJoinStyle:kCGLineJoinRound];
	
	//inset the drawing rect by the line width * 0.5. Oh yeah.
	CGRect clipRect = CGRectMake(self.strokeWidth, self.strokeWidth, rect.size.width - self.strokeWidth , rect.size.height - self.strokeWidth);
	CGFloat maxX = clipRect.size.width;
	CGFloat maxY = clipRect.size.height;
	CGFloat offset = cloudPath.lineWidth * 0.5;
	
	[cloudPath addArcWithCenter:CGPointMake(maxX * 0.166666667 + offset, maxY * 0.7222 + offset) radius:maxX * 0.166666667 startAngle:1.574 endAngle:4.721 clockwise:YES];
	[cloudPath addArcWithCenter:CGPointMake(maxX * 0.2708 + offset, maxY * 0.4444 + offset) radius:maxX * 0.1 startAngle:3.3 endAngle:5.245 clockwise:YES];
	[cloudPath addArcWithCenter:CGPointMake(maxX * 0.5667 + offset, maxY * 0.44445 + offset) radius:maxY * 0.44445 startAngle:3.672 endAngle:0.0001 clockwise:YES];
	[cloudPath addArcWithCenter:CGPointMake(maxX * 0.833333333 + offset, maxY * 0.7222 + offset) radius:maxX * 0.166666667 startAngle:4.721 endAngle:1.574 clockwise:YES];
	[cloudPath closePath];
	[cloudPath stroke];
	if (shallFill) 
	{
		[cloudPath fill];
	}
}


@end
