//
//  FLSView.m
//  FLSSanJiao
//
//  Created by fls on 2019/9/16.
//  Copyright © 2019年 fls. All rights reserved.
//

#import "FLSView.h"

#define Arror_height 10

@implementation FLSView

-(void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    [self drawInContext:UIGraphicsGetCurrentContext()];
    self.layer.shadowColor = [[UIColor blackColor] CGColor];
    
    self.layer.shadowOpacity = 1.0;
    
    self.layer.shadowOffset = CGSizeMake(0.0f, 0.0f);
    
}

-(void)drawInContext:(CGContextRef)context

{
    
    CGContextSetLineWidth(context, 2.0);
    
//    CGContextSetFillColorWithColor(context, [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0].CGColor);
    CGContextSetFillColorWithColor(context, [UIColor yellowColor].CGColor);

    
    [self getDrawPath:context];
    
    CGContextFillPath(context);
    
}

- (void)getDrawPath:(CGContextRef)context

{
    
    CGRect rrect = self.bounds;
    
    CGFloat radius = 6.0;
    
    CGFloat minx = CGRectGetMinX(rrect),
    
    midx = CGRectGetMidX(rrect)-80,
    
    maxx = CGRectGetMaxX(rrect);
    
    CGFloat miny = CGRectGetMinY(rrect),
    
    // midy = CGRectGetMidY(rrect),
    
    maxy = CGRectGetMaxY(rrect)-Arror_height;
    
    CGContextMoveToPoint(context, midx+Arror_height, maxy);
    
    CGContextAddLineToPoint(context,midx, maxy+Arror_height);
    
    CGContextAddLineToPoint(context,midx-Arror_height, maxy);
    
    CGContextAddArcToPoint(context, minx, maxy, minx, miny, radius);
    
    CGContextAddArcToPoint(context, minx, minx, maxx, miny, radius);
    
    CGContextAddArcToPoint(context, maxx, miny, maxx, maxx, radius);
    
    CGContextAddArcToPoint(context, maxx, maxy, midx, maxy, radius);
    
    CGContextClosePath(context);
    
}

@end
