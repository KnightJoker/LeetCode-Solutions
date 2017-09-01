//
//  IntersectionOfTwoArrays_349.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/13.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//





#import "IntersectionOfTwoArrays_349.h"

@implementation IntersectionOfTwoArrays_349

- (NSArray *)intersection:(NSArray *)nums1 andNun2:(NSArray *)nums2 {

    NSMutableArray *tempArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < nums1.count; i++) {
        for (int j = 0; j <nums2.count; j++) {
            if ([nums1[i] integerValue] == [nums2[j] integerValue]) {
                [tempArray addObject:nums2[j]];
            }
        }
    }
    [self removeArraySameObject:tempArray];
    return tempArray;
}

- (void)removeArraySameObject:(NSMutableArray *)array {

    for (int i = 0; i <array.count; i++) {
        for (int j = i + 1; j < array.count; j++) {
            if ([array[i] integerValue] == [array[j] integerValue]) {
                [array removeObjectAtIndex:j];
                [self removeArraySameObject:array];
            }
        }
    }
}

@end
