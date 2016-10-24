//
//  MajorityElement_169.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/18.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//



/*  The description of question
 
 
 Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
 
 You may assume that the array is non-empty and the majority element always exist in the array.
 
 */


#import "MajorityElement_169.h"

@implementation MajorityElement_169

- (NSInteger)majorityElement:(NSMutableArray *)nums {
    

    if (nums.count == 1) {
        return [nums[0] integerValue];
    }
    
    NSInteger times = 1;
    NSInteger targat = [nums[0] integerValue];
    for (int i = 1; i < nums.count; i++) {
        if ([nums[i] integerValue] == targat) {
            times++;
        } else {
        
            times--;
            if (times == 0) {
                times = 1;
                targat = [nums[i] integerValue];
            }
        }
    }
    
    return targat;
}

// 冒泡

- (void)sort_0:(NSMutableArray *)array {
    
    for (int i = 0; i < array.count; i++) {
        for (int j; j < array.count - i - 1; j++) {
            if ([array[j] integerValue] < [array[j + 1] integerValue]) {
                NSInteger temp = [array[j] integerValue];
                array[j] = array[j + 1];
                array[j + 1] = [NSNumber numberWithInteger:temp];
            }
        }
    }

}

// 选择

- (void)sort_1:(NSMutableArray *)array {

    for (int i = 0; i < array.count; i++) {
        for (int j = i + 1; j < array.count; j++) {
            if ([array[i] integerValue] > [array[j] integerValue]) {
                NSInteger temp = [array[i] integerValue];
                array[i] = array[j];
                array[j] = [NSNumber numberWithInteger:temp];
            }
        }
    }
    
}

// 插入

- (void)sort_2:(NSMutableArray *)array {

    for (int i = 0; i < array.count; i++) {
        NSInteger temp = [array[i] integerValue];
        for (int j = i - 1; j >=0 && temp > [array[i] integerValue]; j--) {
            array[j + 1] = array[j];
            array[j] = [NSNumber numberWithInteger:temp];
        }
    }
    
}
@end
