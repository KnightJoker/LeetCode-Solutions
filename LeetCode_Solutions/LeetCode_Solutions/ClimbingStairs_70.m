//
//  ClimbingStairs_70.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/11/11.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//




#import "ClimbingStairs_70.h"

@implementation ClimbingStairs_70

/*  递归解法
 
 - (NSInteger)climbStairs:(NSInteger)n {
 
 if (n < 2 || n == 2) {
    return n;
 }
    return [self climbStairs:(n-1)] + [self climbStairs:(n-2)];
 }
 
 */


- (NSInteger)climbStairs:(NSInteger)n {

    NSInteger stepone = 0;
    NSInteger steptwo = 1;
    NSInteger sum = 0;
    
    for(NSInteger i = 0;i < n;i++) {
        sum = stepone + steptwo;
        stepone = steptwo;
        steptwo = sum;
        
    }
    
    return sum;

}

@end
