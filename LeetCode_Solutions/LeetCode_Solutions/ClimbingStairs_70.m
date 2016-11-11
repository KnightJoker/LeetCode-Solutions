//
//  ClimbingStairs_70.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/11/11.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


/*  The description of question
 
 You are climbing a stair case. It takes n steps to reach to the top.
 
 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
 
 
 设 f (n) 表示爬 n 阶楼梯的不同方法数，为了爬到第 n 阶楼梯，有两个选择：
 • 从第 n  - 1 阶前进 1 步；
 
 • 从第 n  - 2 阶前进 2 步；
 
 因此，有 f (n) = f (n  - 1) + f (n  - 2)。
 
 */

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
