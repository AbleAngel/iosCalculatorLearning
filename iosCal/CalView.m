//
//  CalView.m
//  iosCal
//
//  Created by bytedance on 2020/7/12.
//  Copyright © 2020 bytedance. All rights reserved.
//

#import "CalView.h"
#import "ViewController.h"
#import <Masonry/Masonry.h>

@interface CalView()

@end

@implementation CalView


- (instancetype)init
{
    self = [super init];
    if (self){
       // self.backgroundColor = [[UIColor yellowColor]colorWithAlphaComponent:0.1];
        [self buttonOne];[self buttonTwo];[self buttonThree];[self buttonAdd];
        [self buttonFour];[self buttonFive];[self buttonSix];[self buttonSub];
        [self buttonSeven];[self buttonEight];[self buttonNine];[self buttonMul];
        [self buttonCle];[self buttonZero];[self buttonEqu];[self buttonDot];
        [self buttonBack];[self buttondiv];
        [self image];
        
        [self autolayout];
    }
    return self;
}
- (void) autolayout{
    [self.image mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.mas_top).with.offset(0);
        make.left.mas_equalTo(self.mas_left).with.offset(0);
        make.right.mas_equalTo(self.mas_right).with.offset(0);
        make.height.mas_equalTo(self.mas_height).multipliedBy(0.15);
        //make.height.mas_equalTo(self.mas_height).multipliedBy(0.2);
    }];
    [self.buttonOne mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.image.mas_bottom).with.offset(20);
        make.left.mas_equalTo(self.mas_left).with.offset(0);
        make.right.mas_equalTo(self.buttonTwo.mas_left).with.offset(-15);
        make.height.mas_equalTo(self.mas_height).multipliedBy(0.12);
    }];
    [self.buttonTwo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.image.mas_bottom).with.offset(20);
        make.right.mas_equalTo(self.buttonThree.mas_left).with.offset(-15);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttonThree mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.image.mas_bottom).with.offset(20);
        make.right.mas_equalTo(self.buttonAdd.mas_left).with.offset(-15);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttonAdd mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.image.mas_bottom).with.offset(20);
        make.right.mas_equalTo(self.mas_right).with.offset(0);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttonFour mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonOne.mas_bottom).with.offset(10);
        make.left.mas_equalTo(self.mas_left).with.offset(0);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttonFive mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonOne.mas_bottom).with.offset(10);
        make.right.mas_equalTo(self.buttonThree.mas_left).with.offset(-15);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttonSix mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonOne.mas_bottom).with.offset(10);
        make.right.mas_equalTo(self.buttonSub.mas_left).with.offset(-15);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttonSub mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonOne.mas_bottom).with.offset(10);
        make.right.mas_equalTo(self.mas_right).with.offset(0);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttonSeven mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonFour.mas_bottom).with.offset(10);
        make.left.mas_equalTo(self.mas_left).with.offset(0);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttonEight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonFour.mas_bottom).with.offset(10);
        make.right.mas_equalTo(self.buttonNine.mas_left).with.offset(-15);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttonNine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonFour.mas_bottom).with.offset(10);
        make.right.mas_equalTo(self.buttonMul.mas_left).with.offset(-15);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttonMul mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonFour.mas_bottom).with.offset(10);
        make.right.mas_equalTo(self.mas_right).with.offset(0);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
    //这里还没改
    [self.buttonCle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonDot.mas_bottom).with.offset(10);
        make.left.mas_equalTo(self.mas_left).with.offset(0);
        make.width.equalTo(self.buttonEqu);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttonEqu mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonDot.mas_bottom).with.offset(10);
        make.right.mas_equalTo(self.mas_right).with.offset(0);
        make.left.mas_equalTo(self.buttonCle.mas_right).with.offset(15);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttonZero mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonSeven.mas_bottom).with.offset(10);
        make.right.mas_equalTo(self.buttonBack.mas_left).with.offset(-15);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttonDot mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonSeven.mas_bottom).with.offset(10);
        make.left.mas_equalTo(self.mas_left).with.offset(0);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttondiv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonSeven.mas_bottom).with.offset(10);
        make.right.mas_equalTo(self.mas_right).with.offset(0);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
    [self.buttonBack mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.buttonSeven.mas_bottom).with.offset(10);
        make.right.mas_equalTo(self.buttondiv.mas_left).with.offset(-15);
        make.width.equalTo(self.buttonOne);
        make.height.equalTo(self.buttonOne);
    }];
}
- (UIImageView *)image{
    if(_image == nil){
        UIImageView * imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 300-90, 335, 70)];
        imageView.image = [UIImage imageNamed:@"Image"];
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        imageView.clipsToBounds = YES;
        [self addSubview:imageView];
        _image = imageView;
    }
    return _image;
}
- (UIButton *)buttonOne{
    if (_buttonOne == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20, 300, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"1" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButton1:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonOne = button;
    }
    return _buttonOne;
}

- (void)actionButton1:(UIButton *) button{
    
    
    /*[self.superview.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj isKindOfClass:UITextField.class]) {
            UITextField *textField = (UITextField *)obj;
            NSString * res = [NSString stringWithFormat:@"%f", a];
            NSDecimalNumber * dres = [NSDecimalNumber decimalNumberWithString:res];
            textField.text = [dres stringValue];
            
            *stop = YES;
        }
    }];*/
    NSLog(@"按下1");
}

- (UIButton *)buttonTwo{
    if (_buttonTwo == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20+87.5, 300, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"2" forState:UIControlStateNormal];
        [button setTitle:@"Ding" forState:UIControlStateHighlighted];
        //[button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButton2:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonTwo = button;
    }
    return _buttonTwo;
}

- (void)actionButton2:(UIButton *) button{
    NSLog(@"按下2");
}
- (UIButton *)buttonThree{
    if (_buttonThree == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20+87.5*2, 300, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"3" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButton3:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonThree = button;
    }
    return _buttonThree;
}

- (void)actionButton3:(UIButton *) button{
    NSLog(@"按下3");
}

- (UIButton *)buttonAdd{
    if (_buttonAdd == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20+87.5*3, 300, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"+" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButtonAdd:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonAdd = button;
    }
    return _buttonAdd;
}

- (void)actionButtonAdd:(UIButton *) button{
    NSLog(@"按下+");
}

- (UIButton *)buttonFour{
    if (_buttonFour == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20, 300+70, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"4" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButton4:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonFour = button;
    }
    return _buttonFour;
}

- (void)actionButton4:(UIButton *) button{
    NSLog(@"按下4");
}

- (UIButton *)buttonFive{
    if (_buttonFive == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20+87.5, 300+70, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"5" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButton5:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonFive = button;
    }
    return _buttonFive;
}

- (void)actionButton5:(UIButton *) button{
    NSLog(@"按下5");
}

- (UIButton *)buttonSix{
    if (_buttonSix == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20+87.5*2, 300+70, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"6" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButton6:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonSix = button;
    }
    return _buttonSix;
}

- (void)actionButton6:(UIButton *) button{
    NSLog(@"按下6");
}

- (UIButton *)buttonSub{
    if (_buttonSub == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20+87.5*3, 300+70, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"-" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButtonSub:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonSub = button;
    }
    return _buttonSub;
}

- (void)actionButtonSub:(UIButton *) button{
    NSLog(@"按下-");
}

- (UIButton *)buttonSeven{
    if (_buttonSeven == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20, 300+70*2, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"7" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButton7:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonSeven = button;
    }
    return _buttonSeven;
}

- (void)actionButton7:(UIButton *) button{
    NSLog(@"按下7");
}

- (UIButton *)buttonEight{
    if (_buttonEight == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20+87.5, 300+70*2, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"8" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButton8:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonEight = button;
    }
    return _buttonEight;
}

- (void)actionButton8:(UIButton *) button{
    NSLog(@"按下8");
}

- (UIButton *)buttonNine{
    if (_buttonNine == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20+87.5*2, 300+70*2, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"9" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButton9:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonNine = button;
    }
    return _buttonNine;
}

- (void)actionButton9:(UIButton *) button{
    NSLog(@"按下9");
}

- (UIButton *)buttonMul{
    if (_buttonMul == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20+87.5*3, 300+70*2, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"×" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButtonMul:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonMul = button;
    }
    return _buttonMul;
}

- (void)actionButtonMul:(UIButton *) button{
    NSLog(@"按下×");
}

- (UIButton *)buttonCle{
    if (_buttonCle == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20, 300+70*3, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"CLE" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButtonCle:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonCle = button;
    }
    return _buttonCle;
}

- (void)actionButtonCle:(UIButton *) button{
    NSLog(@"按下CLE");
}

- (UIButton *)buttonZero{
    if (_buttonZero == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20+87.5, 300+70*3, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"0" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButton0:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonZero = button;
    }
    return _buttonZero;
}

- (void)actionButton0:(UIButton *) button{
    NSLog(@"按下0");
}

- (UIButton *)buttonEqu{
    if (_buttonEqu == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20+87.5*2, 300+70*3, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"=" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButtonEqu:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonEqu = button;
    }
    return _buttonEqu;
}

- (void)actionButtonEqu:(UIButton *) button{
    NSLog(@"按下=");
}

- (UIButton *)buttonDot{
    if (_buttonDot == nil) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(20+87.5*3, 300+70*3, 72.5, 50);
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"." forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(actionButtonDot:) forControlEvents:UIControlEventTouchUpInside];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonDot = button;
    }
    return _buttonDot;
}

- (void)actionButtonDot:(UIButton *) button{
    NSLog(@"按下.");
}
- (UIButton *)buttondiv{
    if(_buttondiv == nil){
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"/" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttondiv = button;
    }
    return _buttondiv;
}
- (UIButton *)buttonBack{
    if(_buttonBack == nil){
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.showsTouchWhenHighlighted=YES;
        button.alpha = 0.3;
        [button setTitle:@"<-" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        button.layer.cornerRadius = 10;
        button.layer.masksToBounds = YES;
        [self addSubview:button];
        _buttonBack = button;
    }
    return _buttonBack;
}

@end
