//
//  MoveZeroes_283.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/10.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


/*  The description of question
 
 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 
 For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].
 
 Note:
 - You must do this in-place without making a copy of the array.
 - Minimize the total number of operations.
 
 */


#import "MoveZeroes_283.h"

@implementation MoveZeroes_283

- (NSArray *)moveZeroes:(NSArray *)nums
       andNumsSize:(NSInteger)numsSize {

    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    NSInteger count = 0;
    for (int i = 0; i < numsSize; i++) {
        if ([nums[i] intValue] != 0) {
            [tempArray insertObject:nums[i] atIndex:count];
            count ++;
        }
    }
    for (int i = 0; i < numsSize - count; i++) {
        [tempArray addObject:@0];
    }
    
    nums = nil;
    nums = tempArray;
    return nums;
}

@end
