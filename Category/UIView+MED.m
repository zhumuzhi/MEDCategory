//
//  UIView+MED.m
//  MEDUIViewCategory
//
//  Created by 朱慕之 on 2018/3/29.
//  Copyright © 2018年 zhumuzhi. All rights reserved.
//

#import "UIView+MED.h"

@implementation UIView (MED)


- (void)setX:(CGFloat)x {
    CGRect newFrame = self.frame;
    newFrame.origin.x = x;
    self.frame = newFrame;
}
- (CGFloat)x {
    return self.frame.origin.x;
}

- (void)setY:(CGFloat)y {
    CGRect newFrame = self.frame;
    newFrame.origin.y = y;
    self.frame = newFrame;
}

- (CGFloat)y {
    return self.frame.origin.y;
}


- (void)setWidth:(CGFloat)width {
    CGRect newFrame = self.frame;
    newFrame.size.width = width;
    self.frame = newFrame;
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setHeight:(CGFloat)height {
    CGRect newFrame = self.frame;
    newFrame.size.height = height;
    self.frame = newFrame;
}

- (CGFloat)height {
    return self.frame.size.height;
}


- (void)setTop:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)top {
    return self.frame.origin.y;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setLeft:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)left {
    return self.frame.origin.x;
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setCenterX:(CGFloat)centerX
{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}

- (CGFloat)centerX
{
    return self.center.x;
}

- (void)setCenterY:(CGFloat)centerY
{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

- (CGFloat)centerY
{
    return self.center.y;
}

- (void)setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (CGSize)size
{
    return self.frame.size;
}

- (void)setMaxX:(CGFloat)maxX
{
    self.x = maxX - self.width;
}

- (CGFloat)maxX
{
    return CGRectGetMaxX(self.frame);
}

- (void)setMaxY:(CGFloat)maxY
{
    self.y = maxY - self.height;
}

- (CGFloat)maxY
{
    return CGRectGetMaxY(self.frame);
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    if (borderWidth < 0) {
        return;
    }
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)borderWidth
{
    return self.borderWidth;
}

- (void)setBorderColor:(UIColor *)borderColor
{
    self.layer.borderColor = borderColor.CGColor;
}

- (UIColor *)borderColor
{
    return self.borderColor;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = YES;
}

- (CGFloat)cornerRadius
{
    return self.cornerRadius;
}
/** 水平居中 */
- (void)alignHorizontal
{
    self.x = (self.superview.width - self.width) * 0.5;
}
/** 垂直居中 */
- (void)alignVertical
{
    self.y = (self.superview.height - self.height) *0.5;
}
/** 判断是否显示在主窗口上面*/
- (BOOL)isShowOnWindow
{
    //主窗口
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;

    //相对于父控件转换之后的rect
    CGRect newRect = [keyWindow convertRect:self.frame fromView:self.superview];
    //主窗口的bounds
    CGRect winBounds = keyWindow.bounds;
    //判断两个坐标系是否有交汇的地方，返回bool值
    BOOL isIntersects =  CGRectIntersectsRect(newRect, winBounds);
    if (self.hidden != YES && self.alpha >0.01 && self.window == keyWindow && isIntersects) {
        return YES;
    }else{
        return NO;
    }
}

/** 获取父类Controller */
- (UIViewController *)parentController
{
    UIResponder *responder = [self nextResponder];
    while (responder) {
        if ([responder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)responder;
        }
        responder = [responder nextResponder];
    }
    return nil;
}


@end
