//
//  CDiCloudIcon.h
//
//  Created by Robert Stearn on 17/07/2012.
//  Copyright (c) 2012 Cocoadelica. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CDiCloudIcon : UIView

@property (nonatomic, strong) NSArray *fillColour;
@property (nonatomic, strong) NSArray *strokeColour;
@property (nonatomic) CGFloat strokeWidth;
@property (nonatomic) BOOL shallFill;

- (id)initWithFrame:(CGRect)frame withFill:(NSArray *)fill withStroke:(NSArray *)stroke andLinewidth:(CGFloat)lineWidth shouldFill:(BOOL)shouldFill;

@end
