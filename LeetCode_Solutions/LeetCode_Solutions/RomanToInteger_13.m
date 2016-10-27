//
//  RomanToInteger_13.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/27.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


/*  The description of question
 
 Given a roman numeral, convert it to an integer.
 
 Input is guaranteed to be within the range from 1 to 3999.
 
 
 */


#import "RomanToInteger_13.h"

@implementation RomanToInteger_13


- (NSInteger)romanToIntWithChar:(unichar)c {

    switch (c) {
        case 'I':
            return 1;
        case 'V':
            return 5;
        case 'X':
            return 10;
        case 'L':
            return 50;
        case 'C':
            return 100;
        case 'D':
            return 500;
        case 'M':
            return 1000;
    }
    return 0;
}

- (NSInteger)romanToInt:(NSString *)s {


    NSInteger count = 0;
    for (NSInteger i = s.length - 1; i >= 0; i--) {
        NSInteger temp = [self romanToIntWithChar:[s characterAtIndex:i]];
        count += temp;
    }
    return count;
}

@end
