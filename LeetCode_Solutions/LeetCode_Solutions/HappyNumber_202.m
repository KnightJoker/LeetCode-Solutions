//
//  HappyNumber_202.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/11/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

/*  The description of question
 
 Write an algorithm to determine if a number is "happy".
 
 A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.
 
 Example: 19 is a happy number
 
    1^2 + 9^2 = 82
    8^2 + 2^2 = 68
    6^2 + 8^2 = 100
    1^2 + 0^2 + 0^2 = 1
 
 */

#import "HappyNumber_202.h"

@implementation HappyNumber_202

- (BOOL)isHappy:(NSInteger)n {

    NSInteger count = 0;
    
    if (n > 10 || n == 10) {
        NSInteger temp = n % 10;
        n = n / 10;
        
        if (n > 0 && n < 10) {
            count = temp * temp + n * n + count;
            
            if (count == 1) {
                return YES;
            } else {
                [self isHappy:count];
            }
            
        } else {
            [self isHappy:n];
        }
     
    }
    return NO;
    
}

@end
