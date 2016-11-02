//
//  ConvertANumberToHexadecimal_405.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/11/2.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

/*
 
 Given an integer, write an algorithm to convert it to hexadecimal. For negative integer, two’s complement method is used.
 
 Note:
 
 1、All letters in hexadecimal (a-f) must be in lowercase.
 2、The hexadecimal string must not contain extra leading 0s. If the number is zero, it is represented by a single zero character '0'; otherwise, the first character in the hexadecimal string will not be the zero character.
 3、The given number is guaranteed to fit within the range of a 32-bit signed integer.
 4、You must not use any method provided by the library which converts/formats the number to hex directly.
 
 */

#import "ConvertANumberToHexadecimal_405.h"

@implementation ConvertANumberToHexadecimal_405

- (NSString *)toHex:(NSInteger)num {
    

    return [NSString stringWithFormat:@"%ld",num];
}

@end
