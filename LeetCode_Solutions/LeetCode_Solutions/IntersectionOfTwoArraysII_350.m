//
//  IntersectionOfTwoArraysII_350.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/25.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//



#import "IntersectionOfTwoArraysII_350.h"

@implementation IntersectionOfTwoArraysII_350

- (NSMutableArray *)intersect:(NSMutableArray *)nums
                          and:(NSMutableArray *)nums1 {
    
    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    nums = [self sort_0:nums];
    nums1 = [self sort_0:nums1];
    for (int i = 0, j = 0; i < nums.count && j < nums1.count; )
    {
        if ([nums[i] integerValue] == [nums1[j] integerValue])
        {
            [tempArray addObject:nums[i]];
            i++;
            j++;
        }
        else if ([nums[i] integerValue] < [nums1[j] integerValue] )
            i++;
        else if ([nums[i] integerValue] > [nums1[j] integerValue])
            j++;
    }
    return tempArray;
 
}

- (NSMutableArray *)sort_0:(NSMutableArray *)array {
    
    for (int i = 0; i < array.count; i++) {
        for (int j = i + 1; j < array.count; j++) {
            if ([array[i] integerValue] > [array[j] integerValue]) {
                NSInteger temp = [array[i] integerValue];
                array[i] = array[j];
                array[j] = [NSNumber numberWithInteger:temp];
            }
        }
    }
    return array;
    
}

@end
