//
//  Calculator.m
//  iosCal
//
//  Created by bytedance on 2020/7/13.
//  Copyright © 2020 bytedance. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (Calculator *) init {
    if (self = [super init]){
        numberOne = 0;
        state = 0;
        inputNumber = [NSMutableString stringWithCapacity:10];
    }
    return self;
}

- (void) getNumberOrDot:(NSString *)a{
    [inputNumber appendString:a];
    if(state == 1) state = 2;
}

- (void) getSymbol:(NSString *)a{
    if (state == 0){
        numberOne = [inputNumber doubleValue];
        state = 1;
        symbol = a;
        inputNumber = [NSMutableString stringWithCapacity:10];
    } else if(state == 1){
        symbol = a;
    } else {
        [self getEqu];
        numberOne = [inputNumber doubleValue];
        state = 1;
        symbol = a;
        inputNumber = [NSMutableString stringWithCapacity:10];
    }
}

- (void) getEqu {
    if(state == 0) {
        double a = [inputNumber doubleValue];
        NSString *dStr      = [NSString stringWithFormat:@"%f", a];
        NSDecimalNumber *dn = [NSDecimalNumber decimalNumberWithString:dStr];
        inputNumber = [NSMutableString stringWithCapacity:10];
        [inputNumber appendString:[dn stringValue]];
    }else if(state == 1){
        NSString *dStr      = [NSString stringWithFormat:@"%f", numberOne];
        NSDecimalNumber *dn = [NSDecimalNumber decimalNumberWithString:dStr];
        inputNumber = [NSMutableString stringWithCapacity:10];
        [inputNumber appendString:[dn stringValue]];
        state = 0;
    }else{
        double a = [inputNumber doubleValue];
        if([symbol isEqualToString:@"+"]){
            a = numberOne + a;
        }else if([symbol isEqualToString:@"-"]){
            a = numberOne - a;
        }else{
            a = numberOne * a;
        }
        NSString *dStr      = [NSString stringWithFormat:@"%f", a];
        NSDecimalNumber *dn = [NSDecimalNumber decimalNumberWithString:dStr];
        inputNumber = [NSMutableString stringWithCapacity:10];
        [inputNumber appendString:[dn stringValue]];
        state = 0;
    }
}

- (NSString *) output{
    if(state == 0 || state == 2){
        return inputNumber;
    }else{
        return symbol;
    }
}

- (void) getCLE{
    numberOne = 0;
    state = 0;
    inputNumber = [NSMutableString stringWithCapacity:10];
}

@end
