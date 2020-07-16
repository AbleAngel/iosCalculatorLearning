//
//  ViewController.m
//  iosCal
//
//  Created by bytedance on 2020/7/12.
//  Copyright © 2020 bytedance. All rights reserved.
//

#import "ViewController.h"
#import "CalView.h"
#import <Masonry/Masonry.h>


//double a = 10;

@interface ViewController ()


//@property (nonatomic) UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.view.backgroundColor = [[UIColor yellowColor]colorWithAlphaComponent:0.1];
    UIView* colorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    colorView.backgroundColor = [[UIColor yellowColor]colorWithAlphaComponent:0.1];
    [self.view addSubview:colorView];
    
    [colorView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view.mas_left).with.offset(0);
        make.right.mas_equalTo(self.view.mas_right).with.offset(0);
        make.size.equalTo(self.view);
    }];
    
    //_number = [[DARNumber alloc] init];
    // Do any additional setup after loading the view.
    //NSLog(@"%@", [UIScreen mainScreen].bounds.size);
    _number = [[Calculator alloc] init];
    //_calView = [[CalView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    _calView = [[CalView alloc] init];
    _calView.roorVC = self;
    [_calView.buttonOne addTarget:self action:@selector(buttonOneWasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonDot addTarget:self action:@selector(buttonDotWasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonAdd addTarget:self action:@selector(buttonAddWasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonEqu addTarget:self action:@selector(buttonEquWasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonZero addTarget:self action:@selector(button0WasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonTwo addTarget:self action:@selector(button2WasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonThree addTarget:self action:@selector(button3WasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonFour addTarget:self action:@selector(button4WasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonFive addTarget:self action:@selector(button5WasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonSix addTarget:self action:@selector(button6WasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonSeven addTarget:self action:@selector(button7WasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonEight addTarget:self action:@selector(button8WasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonNine addTarget:self action:@selector(button9WasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonSub addTarget:self action:@selector(buttonSubWasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonMul addTarget:self action:@selector(buttonMulWasPressed) forControlEvents:UIControlEventTouchUpInside];
    [_calView.buttonCle addTarget:self action:@selector(buttonCLEWasPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.calView];
    
    
    UITextField * outputField = [[UITextField alloc]initWithFrame:CGRectMake(20, 130, 335, 60)];
    outputField.enabled = NO;
    outputField.placeholder = @"0";
    [outputField setFont:[UIFont boldSystemFontOfSize:60]];
    outputField.textAlignment = 2;
    self.outField = outputField;
    [self.view addSubview:self.outField];
    self.outField.text = [_number output];
    
    [self autolayout];
}
- (void)autolayout{
    [self.outField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view.mas_left).with.offset(20);
        make.right.mas_equalTo(self.view.mas_right).with.offset(-20);
        make.height.mas_equalTo(self.outField.mas_width).multipliedBy(0.3);
        make.centerY.mas_equalTo(self.view.mas_bottom).dividedBy(4);
    }];
    
    [self.calView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view.mas_left).with.offset(20);
        make.right.mas_equalTo(self.view.mas_right).with.offset(-20);
        make.top.mas_equalTo(self.outField.mas_bottom).with.offset(0);
        make.bottom.mas_equalTo(self.view.mas_bottom);
    }];
}
- (void)buttonOneWasPressed {
    [self.number getNumberOrDot:@"1"];
    self.outField.text = [_number output];
}

- (void)buttonDotWasPressed {
    [self.number getNumberOrDot:@"."];
    self.outField.text = [_number output];
}

- (void)buttonAddWasPressed {
    [self.number getSymbol:@"+"];
    self.outField.text = [_number output];
}

- (void)buttonEquWasPressed {
    [self.number getEqu];
    self.outField.text = [_number output];
}

- (void)button0WasPressed {
    [self.number getNumberOrDot:@"0"];
    self.outField.text = [_number output];
}
- (void)button2WasPressed {
    [self.number getNumberOrDot:@"2"];
    self.outField.text = [_number output];
}
- (void)button3WasPressed {
    [self.number getNumberOrDot:@"3"];
    self.outField.text = [_number output];
}
- (void)button4WasPressed {
    [self.number getNumberOrDot:@"4"];
    self.outField.text = [_number output];
}
- (void)button5WasPressed {
    [self.number getNumberOrDot:@"5"];
    self.outField.text = [_number output];
}
- (void)button6WasPressed {
    [self.number getNumberOrDot:@"6"];
    self.outField.text = [_number output];
}
- (void)button7WasPressed {
    [self.number getNumberOrDot:@"7"];
    self.outField.text = [_number output];
}
- (void)button8WasPressed {
    [self.number getNumberOrDot:@"8"];
    self.outField.text = [_number output];
}
- (void)button9WasPressed {
    [self.number getNumberOrDot:@"9"];
    self.outField.text = [_number output];
}
- (void)buttonSubWasPressed {
    [self.number getSymbol:@"-"];
    self.outField.text = [_number output];
}
- (void)buttonMulWasPressed {
    [self.number getSymbol:@"×"];
    self.outField.text = [_number output];
}
- (void)buttonCLEWasPressed {
    [self.number getCLE];
    self.outField.text = [_number output];
}

@end
