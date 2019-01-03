//
//  ViewController.m
//  UIViewCurCornerRadiusDemo
//
//  Created by 大智云校 on 2019/1/3.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic ,strong)UIView *allCornerView;
@property (nonatomic ,strong)UIView *leftCornerView;
@property (nonatomic ,strong)UIView *rightCornerView;
@property (nonatomic ,strong)UIView *bottomLeftCornerView;
@property (nonatomic ,strong)UIView *bottomRightCornerView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /*byRoundingCorners:UIRectCornerBottomLeft | UIRectCornerBottomRight
     指定了需要成为圆角的角。该参数是UIRectCorner类型的，可选的值有：
     * UIRectCornerTopLeft
     * UIRectCornerTopRight
     * UIRectCornerBottomLeft
     * UIRectCornerBottomRight
     * UIRectCornerAllCorners
     从名字很容易看出来代表的意思，使用“|”来组合就好了。
     */
    
    
    self.leftCornerView = [[UIView alloc] initWithFrame:CGRectMake(50+80+50,50,80,80)];
    self.leftCornerView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.leftCornerView];
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.leftCornerView.bounds byRoundingCorners:UIRectCornerTopLeft cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.leftCornerView.bounds;
    maskLayer.path = maskPath.CGPath;
    self.leftCornerView.layer.mask = maskLayer;
    
    self.rightCornerView = [[UIView alloc] initWithFrame:CGRectMake(50,80+50+50,80,80)];
    self.rightCornerView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:self.rightCornerView];

    UIBezierPath *maskPath1 = [UIBezierPath bezierPathWithRoundedRect:self.rightCornerView.bounds byRoundingCorners:UIRectCornerTopRight cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer *maskLayer1 = [[CAShapeLayer alloc] init];
    maskLayer1.frame = self.rightCornerView.bounds;
    maskLayer1.path = maskPath1.CGPath;
    self.rightCornerView.layer.mask = maskLayer1;
    
    self.bottomLeftCornerView = [[UIView alloc] initWithFrame:CGRectMake(80+50+50,80+50+50,80,80)];
    self.bottomLeftCornerView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.bottomLeftCornerView];
    UIBezierPath *maskPath2 = [UIBezierPath bezierPathWithRoundedRect:self.bottomLeftCornerView.bounds byRoundingCorners:UIRectCornerBottomLeft cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer *maskLayer2 = [[CAShapeLayer alloc] init];
    maskLayer2.frame = self.bottomLeftCornerView.bounds;
    maskLayer2.path = maskPath2.CGPath;
    self.bottomLeftCornerView.layer.mask = maskLayer2;
    
    
    self.bottomRightCornerView = [[UIView alloc] initWithFrame:CGRectMake(50,50,80,80)];
    self.bottomRightCornerView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.bottomRightCornerView];
    
    UIBezierPath *maskPath3 = [UIBezierPath bezierPathWithRoundedRect:self.bottomRightCornerView.bounds byRoundingCorners:UIRectCornerBottomRight cornerRadii:CGSizeMake(10, 10)];
    CAShapeLayer *maskLayer3 = [[CAShapeLayer alloc] init];
    maskLayer3.frame = self.bottomRightCornerView.bounds;
    maskLayer3.path = maskPath3.CGPath;
    self.bottomRightCornerView.layer.mask = maskLayer3;
    
    self.allCornerView = [[UIView alloc] initWithFrame:CGRectMake(150,400,80,80)];
    self.allCornerView.backgroundColor = [UIColor redColor];
    self.allCornerView.layer.cornerRadius = 10;
    self.allCornerView.clipsToBounds = YES;
    [self.view addSubview:self.allCornerView];
}


@end
