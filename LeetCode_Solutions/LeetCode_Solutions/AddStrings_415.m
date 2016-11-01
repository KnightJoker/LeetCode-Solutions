//
//  AddStrings_415.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/11/1.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


/*
 
 Given two non-negative numbers num1 and num2 represented as string, return the sum of num1 and num2.
 
 Note:
 
 The length of both num1 and num2 is < 5100.
 Both num1 and num2 contains only digits 0-9.
 Both num1 and num2 does not contain any leading zero.
 You must not use any built-in BigInteger library or convert the inputs to integer directly.
 
 */

#import "AddStrings_415.h"

@implementation AddStrings_415

- (NSString *)addStrings:(NSString *)num1
                     and:(NSString *)num2 {
    
    return [NSString stringWithFormat:@"%ld",[num1 integerValue] + [num2 integerValue]];
}

@end
