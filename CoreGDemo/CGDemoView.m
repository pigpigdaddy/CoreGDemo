//
//  CGDemoView.m
//  CoreGDemo
//
//  Created by 林峰 on 14-9-22.
//  Copyright (c) 2014年 pigpigdaddy. All rights reserved.
//

#import "CGDemoView.h"

@implementation CGDemoView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    // 获取绘图上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextAddArc(context, 160, 160, 100.0, 0.0, M_PI_2, 1);
    
    //设置属性
    [[UIColor yellowColor]set];
    
    //绘制
    CGContextDrawPath(context, kCGPathFillStroke);
    
//    // 添加对象，绘制椭圆（圆形）的过程也是先创建一个矩形
//    CGRect myRect=CGRectMake(50, 50, 220.0, 200.0);
//    CGContextAddEllipseInRect(context, myRect);
//    //设置属性
//    [[UIColor blueColor] set];
//    CGColorRef color = [UIColor grayColor].CGColor;
//    // offset:偏移量 blur:模糊度 color:阴影颜色
//    CGContextSetShadowWithColor(context, CGSizeMake(3, 3), 0.8, color);
//    //绘制
//    CGContextDrawPath(context, kCGPathFill);
    
    
//    // 添加矩形对象
//    CGRect myRect = CGRectMake(20, 50, 280.0, 50.0);
//    CGContextAddRect(context, myRect);
//    
//    // 设置属性
//    [[UIColor blueColor] setFill];
//    [[UIColor redColor] setStroke];
//    
//    // 绘制
//    CGContextDrawPath(context, kCGPathFillStroke);
//    
//    CGRect myRect2= CGRectMake(20, 150, 280.0, 50.0);
//    // 设置属性
//    [[UIColor yellowColor] set];
//    // 直接使用UIRectFill绘制矩形
//    UIRectFrame(myRect2);// 绘制矩形（填充模式）

//
//    // 设置起始点 设置多条线段
//    CGContextMoveToPoint(context, 20, 50);
//    CGContextAddLineToPoint(context, 20, 100);
//    CGContextAddLineToPoint(context, 300, 100);
//    CGContextAddLineToPoint(context, 300, 300);
//    CGContextAddLineToPoint(context, 100, 300);
//    
//    // 设置图形上下文状态属性
//    CGContextSetRGBStrokeColor(context, 1.0, 0, 0, 1);// 设置笔触颜色
//    CGContextSetRGBFillColor(context, 0, 1.0, 0, 1);// 设置填充色
//    CGContextSetLineWidth(context, 1.0);// 设置线条宽度
//    CGContextSetLineCap(context, kCGLineCapRound);// 设置顶点样式，首尾两个端点是顶点
//    CGContextSetLineJoin(context, kCGLineJoinRound);// 设置连接点样式，除了首尾两点之外的中间端点都是是连接点
//    
//    // 若设置此项，则将会把线段设置为虚线，虚线的“格式”为一段10像素长的线段加一段5像素长的空白，依次循环。
//    // 另外，可以通过对数组定义多个元素来达到多种虚线段样式组合。
//    CGFloat lengths[2] = {10, 5};
//    CGContextSetLineDash(context, 0, lengths, 2);// 2 是元素个数
//    
//    // 若设置此项，则将给绘出的图形设置阴影
//    // 在Quartz 2D中，要使用CGColor方法将UIColor转化为CGColorRef
//    CGColorRef color = [UIColor grayColor].CGColor;
//    // offset:偏移量 blur:模糊度 color:阴影颜色
//    CGContextSetShadowWithColor(context, CGSizeMake(2, 2), 0.8, color);
//
//    // 绘制图像到指定图形上下文
//    CGContextDrawPath(context, kCGPathFillStroke);// 填充类型(有边框，有填充)
}

@end
