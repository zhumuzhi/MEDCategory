//
//  UIView+MED.h
//  MEDUIViewCategory
//
//  Created by 朱慕之 on 2018/3/29.
//  Copyright © 2018年 zhumuzhi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (MED)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat bottom;
@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat right;
@property (nonatomic, assign) CGSize  size;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, assign) CGFloat maxX;
@property (nonatomic, assign) CGFloat maxY;

@property(nonatomic, assign) IBInspectable CGFloat borderWidth;
@property(nonatomic, assign) IBInspectable UIColor *borderColor;
@property(nonatomic, assign) IBInspectable CGFloat cornerRadius;

/** 水平居中 */
- (void)alignHorizontal;

/** 垂直居中 */
- (void)alignVertical;

/** 判断是否显示在主窗口上面 */
- (BOOL)isShowOnWindow;

/** 获取父类Controller */
- (UIViewController *)parentController;

@end
