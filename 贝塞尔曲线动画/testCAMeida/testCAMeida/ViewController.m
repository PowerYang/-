//
//  ViewController.m
//  testCAMeida
//
//  Created by YangJingchao on 16/1/26.
//  Copyright © 2016年 陕西永诺信息科技有限公司. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 初始化layer
    CALayer *layer        = [CALayer layer];
    layer.frame           = CGRectMake(0, 50, 100, 100);
    layer.backgroundColor = [UIColor redColor].CGColor;
    
    UIButton *btna = [[UIButton alloc]init];
    btna.layer.frame =CGRectMake(0, 50, 100, 100);
    
    // 终点位置
    CGPoint endPosition = CGPointMake(layer.position.x, layer.position.y + 200);
    
    
    // 动画
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    animation.fromValue         = [NSValue valueWithCGPoint:layer.position];
    animation.toValue           = [NSValue valueWithCGPoint:endPosition];
    animation.timingFunction    = [CAMediaTimingFunction functionWithControlPoints:0.00 :0.00 :1.00 :1.00];
    layer.position              = endPosition;
    animation.duration          = 1.f;
    
    

    // 添加动画
    [layer addAnimation:animation forKey:nil];
    
    
    // 添加layer
    [self.view.layer addSublayer:layer];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
