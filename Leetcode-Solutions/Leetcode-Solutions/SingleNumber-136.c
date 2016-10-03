//
//  SingleNumber-136.c
//  Leetcode-Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/3.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

/*  问题描述
 
 
    Given an array of integers, every element appears twice except for one. Find that single one.
 
 */


int singleNumber(int* nums, int numsSize) {
    
    int temp = 0;
    for (int i = 0; i < numsSize; i++) {
        temp = temp^nums[i];
    }
    return temp;
}