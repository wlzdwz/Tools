//
//  UIImage+RoundedCorner.h
//  悦龙台-prisd
//
//  Created by wuliangzhi on 2020/6/9.
//  Copyright © 2020 wuliangzhi. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (RoundedCorner)
+ (UIImage *)roundedCornerImageWithimageName:(NSString *)name Rect:(CGRect)rect CornerRadius:(CGFloat)cornerRadius;

@end

NS_ASSUME_NONNULL_END
