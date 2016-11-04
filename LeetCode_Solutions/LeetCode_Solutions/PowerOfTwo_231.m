//
//  PowerOfTwo_231.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/11/4.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


/*  The description of question
 
 Given an integer, write a function to determine if it is a power of two.
 
 */


#import "PowerOfTwo_231.h"

@implementation PowerOfTwo_231

- (BOOL)isPowerOfTwo:(NSInteger)n {

    if (n == 0 || n < 0) {
        return NO;
    }
    if ((n & n - 1) == 0) {
        return YES;
        // & 运算规则，二进制按位与运算，两个数都为真（或者都为1），则结果为1，两个数中有一个为假（或者为0），其结果为假。
        //如果n是2的某个次方，那么他的二进制形式一定是10000......这样的形式
        //并且n-1的二进制形式一定是01111....，进行与运算一定是00000
    }
    else
        return NO;;
}

@end
