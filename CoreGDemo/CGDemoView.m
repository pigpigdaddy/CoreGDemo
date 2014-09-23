//
//  CGDemoView.m
//  CoreGDemo
//
//  Created by 林峰 on 14-9-22.
//  Copyright (c) 2014年 pigpigdaddy. All rights reserved.
//

#import "CGDemoView.h"

#define TILE_SIZE 20

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

//void drawColoredTile(void *info,CGContextRef context){
//    // 有颜色填充，在这里设置填充色
//    CGContextSetRGBFillColor(context, 254.0/255.0, 52.0/255.0, 90.0/255.0, 1);
//    CGContextFillRect(context, CGRectMake(0, 0, TILE_SIZE, TILE_SIZE));
//    CGContextFillRect(context, CGRectMake(TILE_SIZE, TILE_SIZE, TILE_SIZE, TILE_SIZE));
//    
//    CGContextSetRGBFillColor(context, 0.0/255.0, 160.0/255.0, 190.0/255.0, 1);
//    CGContextFillRect(context, CGRectMake(TILE_SIZE, 0, TILE_SIZE, TILE_SIZE));
//    CGContextFillRect(context, CGRectMake(0, TILE_SIZE, TILE_SIZE, TILE_SIZE));
//}
//
//void drawTile(void *info,CGContextRef context){
//    CGContextFillRect(context, CGRectMake(0, 0, TILE_SIZE, TILE_SIZE));
//    CGContextFillRect(context, CGRectMake(TILE_SIZE, TILE_SIZE, TILE_SIZE, TILE_SIZE));
//}

- (void)drawRect:(CGRect)rect
{
    // 获取绘图上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 拿到图片
    UIImage *image=[UIImage imageNamed:@"1.png"];
    
    // 保存上下文状态
    CGContextSaveGState(context);
    
    // 设置绘图宽高
    CGFloat height = 400;
    CGFloat width = 300;
    
    // 在y轴缩放-1相当于沿着x张旋转180 注意！此时x轴不变，y轴因旋转而正向朝上，原点不变仍然在左上角
    CGContextScaleCTM(context, 1.0, -1.0);
    // 向下平移一个图片高度
    CGContextTranslateCTM(context, 0, -height);
    
    //图像绘制
    CGRect myRect= CGRectMake(0, 0, width, height);
    CGContextDrawImage(context, myRect, image.CGImage);
    
    // 恢复上下文状态
    CGContextRestoreGState(context);
    
//    CGRect myRect3= CGRectMake(20, 400, 280.0, 80.0);
//    // 设置属性
//    [[UIColor greenColor] set];
//    // 直接使用UIRectFill绘制矩形
//    UIRectFrame(myRect3);// 绘制矩形（填充模式）
    
//    // 保存初始状态
//    CGContextSaveGState(context);
//    // 形变第一步：图形上下文向右平移80
//    CGContextTranslateCTM(context, 80, 0);
//    // 形变第二步：缩放0.8
//    CGContextScaleCTM(context, 0.8, 0.8);
//    // 形变第三步：旋转
//    CGContextRotateCTM(context, M_PI_4/4);
//    
//    UIImage *image=[UIImage imageNamed:@"1.png"];
//    [image drawInRect:CGRectMake(0, 50, 240, 300)];
//    
//    //恢复到初始状态
//    CGContextRestoreGState(context);
    
    
//    // 创建RGB颜色空间
//    CGColorSpaceRef rgbSpace= CGColorSpaceCreateDeviceRGB();
//    // 使用RGB颜色空间创建填充颜色空间
//    CGColorSpaceRef colorSpace=CGColorSpaceCreatePattern(rgbSpace);
//    // 将填充色颜色空间设置为模式填充的颜色空间
//    CGContextSetFillColorSpace(context, colorSpace);
//    
//    //填充模式回调函数结构体
//    CGPatternCallbacks callback={0, &drawTile, NULL};
//    
//    // 创建单位图形 参数依次为:
//    // info:传递给callback的参数
//    // bounds:单位图形绘制大小
//    // matrix:形变
//    // xStep:单位图形分配宽度
//    // yStep:单位图形分配高度
//    // tiling:三种模式，控制是否扭曲
//    // isClored:绘制的瓷砖是否指定颜色(对于无颜色瓷砖此处指定位false)
//    // callbacks:设置回调函数
//    CGPatternRef pattern=CGPatternCreate(NULL, CGRectMake(0, 0, 2*TILE_SIZE, 2*TILE_SIZE), CGAffineTransformIdentity,2*TILE_SIZE,2*TILE_SIZE, kCGPatternTilingNoDistortion, false, &callback);
//    
//    CGFloat components[]={254.0/255.0,52.0/255.0,90.0/255.0,1.0};
//    // 注意最后一个参数对于无颜色填充模式指定为当前颜色空间颜色数据
//    CGContextSetFillPattern(context, pattern, components);
//    UIRectFill(CGRectMake(0, 0, 320, 568));
//    
//    CGColorSpaceRelease(rgbSpace);
//    CGColorSpaceRelease(colorSpace);
//    CGPatternRelease(pattern);
    
//    // 创建填充的颜色空间 有颜色填充 传NULL
//    CGColorSpaceRef colorSpace = CGColorSpaceCreatePattern(NULL);
//    // 设置颜色空间
//    CGContextSetFillColorSpace(context, colorSpace);
//    
//    // 设置实际创建单位图形的回调函数
//    CGPatternCallbacks callback={0, &drawColoredTile, NULL};
//    
//    // 创建单位图形 参数依次为:
//    // info:传递给callback的参数
//    // bounds:单位图形绘制大小
//    // matrix:形变
//    // xStep:单位图形分配宽度
//    // yStep:单位图形分配高度
//    // tiling:三种模式，控制是否扭曲
//    // isClored:绘制的瓷砖是否指定颜色(对于有颜色瓷砖此处指定位true)
//    // callbacks:设置回调函数
//    CGPatternRef pattern=CGPatternCreate(NULL, CGRectMake(0, 0, 2*TILE_SIZE, 2*TILE_SIZE), CGAffineTransformIdentity, 2*TILE_SIZE,2*TILE_SIZE, kCGPatternTilingNoDistortion, true, &callback);
//    
//    CGFloat alpha = 1.0;
//    // 注意最后一个参数对于有颜色瓷砖指定为透明度的参数地址，对于无颜色瓷砖则指定当前颜色空间对应的颜色数组
//    CGContextSetFillPattern(context, pattern, &alpha);
//    
//    UIRectFill(CGRectMake(0, 0, 320, 480));
//    
//    // 释放
//    CGColorSpaceRelease(colorSpace);
//    CGPatternRelease(pattern);
    
//    CGRect myRect= CGRectMake(0, 130.0, 320.0, 50.0);
//    CGRect rect1= CGRectMake(0, 390.0, 320.0, 50.0);
//    
//    
//    CGRect rect2=CGRectMake(20, 50.0, 10.0, 250.0);
//    CGRect rect3=CGRectMake(40.0, 50.0, 10.0, 250.0);
//    CGRect rect4=CGRectMake(60.0, 50.0, 10.0, 250.0);
//    CGRect rect5=CGRectMake(80.0, 50.0, 10.0, 250.0);
//    CGRect rect6=CGRectMake(100.0, 50.0, 10.0, 250.0);
//    CGRect rect7=CGRectMake(120.0, 50.0, 10.0, 250.0);
//    CGRect rect8=CGRectMake(140.0, 50.0, 10.0, 250.0);
//    CGRect rect9=CGRectMake(160.0, 50.0, 10.0, 250.0);
//    CGRect rect10=CGRectMake(180.0, 50.0, 10.0, 250.0);
//    CGRect rect11=CGRectMake(200.0, 50.0, 10.0, 250.0);
//    CGRect rect12=CGRectMake(220.0, 50.0, 10.0, 250.0);
//    CGRect rect13=CGRectMake(240.0, 50.0, 10.0, 250.0);
//    CGRect rect14=CGRectMake(260.0, 50.0, 10.0, 250.0);
//    CGRect rect15=CGRectMake(280.0, 50.0, 10.0, 250.0);
//    
//    CGRect rect16=CGRectMake(30.0, 310.0, 10.0, 250.0);
//    CGRect rect17=CGRectMake(50.0, 310.0, 10.0, 250.0);
//    CGRect rect18=CGRectMake(70.0, 310.0, 10.0, 250.0);
//    CGRect rect19=CGRectMake(90.0, 310.0, 10.0, 250.0);
//    CGRect rect20=CGRectMake(110.0, 310.0, 10.0, 250.0);
//    CGRect rect21=CGRectMake(130.0, 310.0, 10.0, 250.0);
//    CGRect rect22=CGRectMake(150.0, 310.0, 10.0, 250.0);
//    CGRect rect23=CGRectMake(170.0, 310.0, 10.0, 250.0);
//    CGRect rect24=CGRectMake(190.0, 310.0, 10.0, 250.0);
//    CGRect rect25=CGRectMake(210.0, 310.0, 10.0, 250.0);
//    CGRect rect26=CGRectMake(230.0, 310.0, 10.0, 250.0);
//    CGRect rect27=CGRectMake(250.0, 310.0, 10.0, 250.0);
//    CGRect rect28=CGRectMake(270.0, 310.0, 10.0, 250.0);
//    CGRect rect29=CGRectMake(290.0, 310.0, 10.0, 250.0);
//    
//    
//    [[UIColor yellowColor]set];
//    UIRectFill(myRect);
//    
//    [[UIColor greenColor]setFill];
//    UIRectFill(rect1);
//    
//    [[UIColor redColor]setFill];
//    UIRectFillUsingBlendMode(rect2, kCGBlendModeClear);
//    UIRectFillUsingBlendMode(rect3, kCGBlendModeColor);
//    UIRectFillUsingBlendMode(rect4, kCGBlendModeColorBurn);
//    UIRectFillUsingBlendMode(rect5, kCGBlendModeColorDodge);
//    UIRectFillUsingBlendMode(rect6, kCGBlendModeCopy);
//    UIRectFillUsingBlendMode(rect7, kCGBlendModeDarken);
//    UIRectFillUsingBlendMode(rect8, kCGBlendModeDestinationAtop);
//    UIRectFillUsingBlendMode(rect9, kCGBlendModeDestinationIn);
//    UIRectFillUsingBlendMode(rect10, kCGBlendModeDestinationOut);
//    UIRectFillUsingBlendMode(rect11, kCGBlendModeDestinationOver);
//    UIRectFillUsingBlendMode(rect12, kCGBlendModeDifference);
//    UIRectFillUsingBlendMode(rect13, kCGBlendModeExclusion);
//    UIRectFillUsingBlendMode(rect14, kCGBlendModeHardLight);
//    UIRectFillUsingBlendMode(rect15, kCGBlendModeHue);
//    UIRectFillUsingBlendMode(rect16, kCGBlendModeLighten);
//    
//    UIRectFillUsingBlendMode(rect17, kCGBlendModeLuminosity);
//    UIRectFillUsingBlendMode(rect18, kCGBlendModeMultiply);
//    UIRectFillUsingBlendMode(rect19, kCGBlendModeNormal);
//    UIRectFillUsingBlendMode(rect20, kCGBlendModeOverlay);
//    UIRectFillUsingBlendMode(rect21, kCGBlendModePlusDarker);
//    UIRectFillUsingBlendMode(rect22, kCGBlendModePlusLighter);
//    UIRectFillUsingBlendMode(rect23, kCGBlendModeSaturation);
//    UIRectFillUsingBlendMode(rect24, kCGBlendModeScreen);
//    UIRectFillUsingBlendMode(rect25, kCGBlendModeSoftLight);
//    UIRectFillUsingBlendMode(rect26, kCGBlendModeSourceAtop);
//    UIRectFillUsingBlendMode(rect27, kCGBlendModeSourceIn);
//    UIRectFillUsingBlendMode(rect28, kCGBlendModeSourceOut);
//    UIRectFillUsingBlendMode(rect29, kCGBlendModeXOR);
//    
//    CGContextSetBlendMode(context, <#CGBlendMode mode#>)
    
//    //裁切处一块矩形用于显示，注意必须先裁切再调用渐变
//    //CGContextClipToRect(context, CGRectMake(20, 50, 280, 300));
//    //裁切还可以使用UIKit中对应的方法
//    UIRectClip(CGRectMake(20, 50, 280, 300));
    
//    // 使用rgb颜色空间
//    CGColorSpaceRef colorSpace=CGColorSpaceCreateDeviceRGB();
//    
//    // 同线性渐变
//    CGFloat compoents[12]={
//        248.0/255.0,86.0/255.0,86.0/255.0,1,
//        249.0/255.0,127.0/255.0,127.0/255.0,1,
//        1.0,1.0,1.0,1.0
//    };
//    CGFloat locations[3]={0,0.3,1.0};
//    CGGradientRef gradient= CGGradientCreateWithColorComponents(colorSpace, compoents, locations, 3);
//    
//    // startCenter:起始点位置
//    // startRadius:起始半径（通常为0，否则在此半径范围内容无任何填充）
//    // endCenter:终点位置（通常和起始点相同，否则会有偏移）
//    // endRadius:终点半径（也就是渐变的扩散长度）
//    // options:绘制方式,kCGGradientDrawsBeforeStartLocation 开始位置之前就进行绘制，但是到结束位置之后不再绘制，kCGGradientDrawsAfterEndLocation开始位置之前不进行绘制，但到结束点之后继续填充
//    CGContextDrawRadialGradient(context, gradient, CGPointMake(160, 284), 0, CGPointMake(165, 289), 150, kCGGradientDrawsAfterEndLocation);
//    //释放颜色空间
//    CGColorSpaceRelease(colorSpace);
    
//    //使用rgb颜色空间
//    CGColorSpaceRef colorSpace=CGColorSpaceCreateDeviceRGB();
//    
//    // compoents:该数组内包含的是RGB值构成的颜色数据，由于RGB值需要四个参数（red、green、blue、alpha），所以假如有三个颜色，则components应该有4*3=12个元素
//    CGFloat compoents[12]={
//        248.0/255.0,86.0/255.0,86.0/255.0,1,
//        249.0/255.0,127.0/255.0,127.0/255.0,1,
//        1.0,1.0,1.0,1.0
//    };
//    // locations:颜色所在位置（范围0~1），这个数组的个数不小于components中存放颜色的个数
//    CGFloat locations[3]={0,0.3,1.0};
//    // count:渐变个数，等于locations的个数
//    // CGGradientCreateWithColorComponents 设置渐变各项参数 获得CGGradientRef对象
//    CGGradientRef gradient= CGGradientCreateWithColorComponents(colorSpace, compoents, locations, 3);
//    
//    // startPoint:起始位置
//    // endPoint:终止位置
//    // options:绘制方式,kCGGradientDrawsBeforeStartLocation 开始位置之前就进行绘制，到结束位置之后不再绘制，kCGGradientDrawsAfterEndLocation开始位置之前不进行绘制，到结束点之后继续填充
//    CGContextDrawLinearGradient(context, gradient, CGPointZero, CGPointMake(320, 300), kCGGradientDrawsAfterEndLocation);
//    
//    //释放颜色空间
//    CGColorSpaceRelease(colorSpace);
    
//    UIImage *image=[UIImage imageNamed:@"1.png"];
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
