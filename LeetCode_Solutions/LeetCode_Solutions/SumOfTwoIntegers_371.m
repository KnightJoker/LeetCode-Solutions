//
//  SumOfTwoIntegers_371.m
//  LeetCode_Solutions
//
//  Created by Huni on 11/04/2017.
//  Copyright © 2017 KnightJoker. All rights reserved.
//



#import "SumOfTwoIntegers_371.h"

@implementation SumOfTwoIntegers_371

- (NSInteger)getSum:(NSInteger)a otherNum:(NSInteger)b {

    if(a == 0) return b;
    
    NSInteger x = a ^ b;
    NSInteger c = (a & b) << 1;
    return [self getSum:c otherNum:x];
}
@end
