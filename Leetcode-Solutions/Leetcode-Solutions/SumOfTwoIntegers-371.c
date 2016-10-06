//
//  SumOfTwoIntegers-371.c
//  Leetcode-Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/5.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

/* 问题描述
 
 Calculate the sum of two integers a and b, but you are not allowed to use the operator + and -.
 
 Example:
 Given a = 1 and b = 2, return 3.
 
 */

int getSum(int a, int b) {
 
    while (b)
    {
        int c = a ^ b;
        b = (a & b) << 1;
        a = c;
    }
    return a;
}