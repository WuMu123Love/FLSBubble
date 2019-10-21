//
//  ViewController.m
//  FLSSanJiao
//
//  Created by fls on 2019/9/16.
//  Copyright © 2019年 fls. All rights reserved.
//

#import "ViewController.h"
#import "FLSView.h"
@interface ViewController ()
@property(nonatomic,strong) UIView * arrowView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    FLSView * flv = [[FLSView alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
    flv.backgroundColor = [UIColor clearColor];
    [self.view addSubview:flv];
//    [self.view addSubview:self.arrowView];
}
//- (UIView *)arrowView{
//    if (!_arrowView) {
//        // draw
//        CGSize size = CGSizeMake(100, 100);
//        UIBezierPath *path = [[UIBezierPath alloc] init];
////        [path moveToPoint:CGPointMake(size.width / 2.0, 0)];
////        [path addLineToPoint:CGPointMake(0, size.height)];
////        [path addLineToPoint:CGPointMake(size.width, size.height)];
//
//        [path moveToPoint:CGPointMake(size.width / 2.0, size.height)];
//        path.lineWidth = 1.0;
//        [path addLineToPoint:CGPointMake(0, 0)];
//        [path addLineToPoint:CGPointMake(size.width, 0)];
//
//        CAShapeLayer *arrowLayer = [CAShapeLayer layer];
//        arrowLayer.path = path.CGPath;
//
//        _arrowView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, size.width, size.height)];
//        _arrowView.layer.mask = arrowLayer;
//        _arrowView.backgroundColor = [UIColor redColor];
//    }
//    return _arrowView;
//}
- (UIView *)arrowView{
    if (!_arrowView) {
        // draw
        CGSize size = CGSizeMake(200, 50);
        UIBezierPath *path = [[UIBezierPath alloc] init];
                [path moveToPoint:CGPointMake(size.width / 2.0, 0)];
                [path addLineToPoint:CGPointMake(0, size.height)];
                [path addLineToPoint:CGPointMake(size.width, size.height)];
        
        path.lineWidth = 1.0;


        CAShapeLayer *arrowLayer = [CAShapeLayer layer];
        arrowLayer.path = path.CGPath;
        
        _arrowView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, size.width, size.height)];
        _arrowView.layer.mask = arrowLayer;
        _arrowView.backgroundColor = [UIColor redColor];
    }
    return _arrowView;
}

@end
