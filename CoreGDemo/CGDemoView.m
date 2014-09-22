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
    
    UIImage *image=[UIImage imageNamed:@"1.png"];
    //从某一点开始绘制
//    [image drawAtPoint:CGPointMake(10, 50)];
    //绘制到指定的矩形中，注意如果大小不合适会会进行拉伸
//    [image drawInRect:CGRectMake(10, 50, 300, 400)];
    //平铺绘制
//    [image drawAsPatternInRect:CGRectMake(0, 0, 320, 568)];
    
//    // 绘制的文本内容
//    NSString *str=@"Quartz 2D is an advanced, two-dimensional drawing engine available for iOS application development and to all Mac OS X application environments outside of the kernel. Quartz 2D provides low-level, lightweight 2D rendering with unmatched output fidelity regardless of display or printing device. Quartz 2D is resolution- and device-independent; you don’t need to think about the final destination when you use the Quartz 2D application programming interface (API) for drawing.";
//    CGRect myRect= CGRectMake(20, 50, 280, 300);
//    // 设置字体
//    UIFont *font=[UIFont systemFontOfSize:18];
//    // 字体颜色
//    UIColor *color=[UIColor blueColor];
//    // 段落样式
//    NSMutableParagraphStyle *style=[[NSMutableParagraphStyle alloc]init];
//    // 对齐方式
//    style.alignment=NSTextAlignmentLeft;
//    [str drawInRect:myRect withAttributes:@{NSFontAttributeName:font,NSForegroundColorAttributeName:color,NSParagraphStyleAttributeName:style}];
    
//    // 初始位置端点
//    CGContextMoveToPoint(context, 20, 100);
//    
//    // 二次贝塞尔曲线
//    // cpx:控制点x坐标
//    // cpy:控制点y坐标
//    // 结束点x坐标
//    // 结束点y坐标
//    CGContextAddQuadCurveToPoint(context, 160, 0, 300, 100);
//    
//    CGContextMoveToPoint(context, 20, 400);
//    
//    // 三次贝塞尔曲线
//    // cp1x:第一个控制点x坐标
//    // cp1y:第一个控制点y坐标
//    // cp2x:第二个控制点x坐标
//    // cp2y:第二个控制点y坐标
//    // x:结束点x坐标
//    // y:结束点y坐标
//    CGContextAddCurveToPoint(context, 80, 300, 240, 500, 300, 300);
//    
//    //设置图形上下文属性
//    [[UIColor blueColor]setFill];
//    [[UIColor redColor]setStroke];
//    
//    //绘制路径
//    CGContextDrawPath(context, kCGPathFillStroke);
    
//    // 从左到右除了绘图上下文以外的参数说明
//    // x:中心点x坐标
//    // y:中心点y坐标
//    // radius:半径
//    // startAngle:起始弧度
//    // endAngle:终止弧度
//    // closewise:是否逆时针绘制，1则顺时针绘制，0则逆时针绘制
//    CGContextAddArc(context, 160, 160, 100.0, 0.0, 1.5*M_PI, 0);
//    
//    //设置属性
//    [[UIColor blueColor] set];
//    
//    //绘制
//    CGContextDrawPath(context, kCGPathStroke);
    
//    // 设置起始点 设置多条线段
//    CGContextMoveToPoint(context, 20, 50);
//    CGContextAddLineToPoint(context, 50, 120);
//    
//    CGContextSetRGBStrokeColor(context, 1.0, 0, 0, 1);// 设置笔触颜色
//    
//    // 绘制图像到指定图形上下文
//    CGContextDrawPath(context, kCGPathStroke);// 填充类型(有边框，有填充)
    
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
//    [[UIColor greenColor] set];
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
//    CGContextDrawPath(context, kCGPathFill);// 填充类型(有边框，有填充)
}

@end
