//
//  ANButton.h
//  ANButtonDemo
//
//  Author Andyjicw 479003573@qq.com
//
//  Created by andy on 27/09/2016.
//  Copyright © 2016 andy. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ANButtonDelegate <NSObject>

@optional

- (void)ANButton:(UIView *)numberButton
          number:(NSString *)number;

@end

@interface ANButton : UIView

/**
 加减按钮的回调
 */
@property (nonatomic, copy) void(^numberBlock)(NSString *number);

/**
 代理
 */
@property (nonatomic, weak) id<ANButtonDelegate> delegate;

/**
 设置边框的颜色,如果没有设置颜色,就没有边框
 */
@property (nonatomic, strong) UIColor *borderColor;

/**
 是否开启旋转动画,默认NO
 */
@property (nonatomic, assign, getter=isShakeAnimation) BOOL shakeAnimation;

/**
 获取/设置当前输入框的内容
 */
@property (nonatomic, copy) NSString *currentNumber;

/**
 字体大小
 */
@property (nonatomic, strong) UIFont *font;

#warning 加减号按钮的标题和背景图片只能设置其中一个,若全部设置,则以最后设置的类型为准
/**
 设置加/减按钮的标题
 
 @param increaseTitle 加按钮标题
 @param decreaseTitle 减按钮标题
 */
- (void)setTitleWithIncreaseTitle:(NSString *)increaseTitle
                    decreaseTitle:(NSString *)decreaseTitle;

/**
 设置加/减按钮的背景图片
 
 @param increaseImage 加按钮背景图片
 @param decreaseImage 减按钮背景图片
 */
- (void)setImageWithIncreaseImage:(UIImage *)increaseImage
                    decreaseImage:(UIImage *)decreaseImage;

@end
