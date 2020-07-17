//
//  CalView.h
//  iosCal
//
//  Created by bytedance on 2020/7/12.
//  Copyright © 2020 bytedance. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class ViewController;

@interface CalView : UIView

@property (nonatomic, strong) UIButton *buttonOne;
@property (nonatomic, strong) UIButton *buttonTwo;
@property (nonatomic, strong) UIButton *buttonThree;
@property (nonatomic, strong) UIButton *buttonAdd;
@property (nonatomic, strong) UIButton *buttonFour;
@property (nonatomic, strong) UIButton *buttonFive;
@property (nonatomic, strong) UIButton *buttonSix;
@property (nonatomic, strong) UIButton *buttonSub;
@property (nonatomic, strong) UIButton *buttonSeven;
@property (nonatomic, strong) UIButton *buttonEight;
@property (nonatomic, strong) UIButton *buttonNine;
@property (nonatomic, strong) UIButton *buttonMul;
@property (nonatomic, strong) UIButton *buttonCle;
@property (nonatomic, strong) UIButton *buttonZero;
@property (nonatomic, strong) UIButton *buttonEqu;
@property (nonatomic, strong) UIButton *buttonDot;
@property (nonatomic, strong) UIButton *buttonBack;
@property (nonatomic, strong) UIButton *buttondiv;
@property (nonatomic) UIImageView *image;

@property (nonatomic, weak) ViewController *roorVC;

@end

NS_ASSUME_NONNULL_END
