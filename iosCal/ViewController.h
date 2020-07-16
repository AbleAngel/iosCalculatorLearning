//
//  ViewController.h
//  iosCal
//
//  Created by bytedance on 2020/7/12.
//  Copyright © 2020 bytedance. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalView.h"
//#import "DARNumber.h"
#import "Calculator.h"

@interface ViewController : UIViewController 

@property (nonatomic, strong) Calculator* number;
@property (nonatomic, strong) UITextField* outField;
@property (nonatomic, strong) CalView* calView;

@end

