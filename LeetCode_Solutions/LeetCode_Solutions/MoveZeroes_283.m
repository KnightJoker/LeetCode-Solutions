//
//  MoveZeroes_283.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/10.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//



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
