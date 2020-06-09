//
//  UIImage+RoundedCorner.m
//  悦龙台-prisd
//
//  Created by wuliangzhi on 2020/6/9.
//  Copyright © 2020 wuliangzhi. All rights reserved.
//

#import "UIImage+RoundedCorner.h"

@implementation UIImage (RoundedCorner)

+ (UIImage *)roundedCornerImageWithimageName:(NSString *)name Rect:(CGRect)rect CornerRadius:(CGFloat)cornerRadius{
    UIImageView *imgV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:name]];
    imgV.frame = rect;
    UIImage *img = nil;
    
    UIGraphicsBeginImageContextWithOptions(imgV.size, NO, [UIScreen mainScreen].scale);
    //使用贝塞尔曲线画一个带圆角的矩形
    [[UIBezierPath bezierPathWithRoundedRect:imgV.bounds cornerRadius:cornerRadius] addClip];
    [imgV drawRect:imgV.bounds];
    //得到结果
    img = UIGraphicsGetImageFromCurrentImageContext();
    //结束会话
    UIGraphicsEndImageContext();
    
    return img;
}

@end
