//
//  NumberComplement_476.m
//  LeetCode_Solutions
//
//  Created by Huni on 20/03/2017.
//  Copyright © 2017 KnightJoker. All rights reserved.
//


/*  the description of question
 
 
 Given a positive integer, output its complement number. The complement strategy is to flip the bits of its binary representation.
 
 Note:
 The given integer is guaranteed to fit within the range of a 32-bit signed integer.
 You could assume no leading zero bit in the integer’s binary representation.
    Example 1:
        Input: 5
        Output: 2
 
 Explanation: The binary representation of 5 is 101 (no leading zero bits), and its complement is 010. So you need to output 2.
    Example 2:
        Input: 1
        Output: 0
 Explanation: The binary representation of 1 is 1 (no leading zero bits), and its complement is 0. So you need to output 0.
 
 
 */

#import "NumberComplement_476.h"

@implementation NumberComplement_476

- (NSInteger)findComplement:(NSInteger)num {

    NSInteger temp = num, mask = 1;
    while(temp) {
            temp >>= 1;
            mask <<= 1;
        }
        return ((mask - 1) ^ num);
}


@end
