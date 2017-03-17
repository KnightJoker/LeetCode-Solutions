//
//  HammingDistance_461.m
//  LeetCode_Solutions
//
//  Created by Huni on 17/03/2017.
//  Copyright © 2017 KnightJoker. All rights reserved.
//

#import "HammingDistance_461.h"

/*   The description of question
 
 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
 
 Given two integers x and y, calculate the Hamming distance.
 
 对两个字符串进行异或运算，并统计结果为1的个数，那么这个数就是汉明距离。
 
 */


@implementation HammingDistance_461

- (NSInteger)hammingDistance:(NSInteger)x
                         and:(NSInteger)y {
    
    NSInteger res = 0;
    NSInteger exc = x ^ y;
    while (exc) {
        ++res;
        exc &= (exc - 1);
    }
    return res;
    
}

@end
