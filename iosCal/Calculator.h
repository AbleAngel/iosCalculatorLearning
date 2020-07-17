//
//  Calculator.h
//  iosCal
//
//  Created by bytedance on 2020/7/13.
//  Copyright © 2020 bytedance. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator : NSObject{
    double numberOne;
    int state;
    NSMutableString *inputNumber;
    NSString *symbol;
}

- (void) getNumberOrDot:(NSString *) a;
- (void) getSymbol:(NSString *) a;
- (void) getEqu;
- (void) getCLE;
- (void) getBackspace;

- (NSString *) output;

@end

NS_ASSUME_NONNULL_END
