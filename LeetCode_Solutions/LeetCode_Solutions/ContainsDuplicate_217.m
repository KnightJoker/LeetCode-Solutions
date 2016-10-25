//
//  ContainsDuplicate_217.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/25.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


/*  The description of question
 
 Given an array of integers, find if the array contains any duplicates. 
 Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
 
 */

#import "ContainsDuplicate_217.h"

@implementation ContainsDuplicate_217

- (BOOL)containsDuplicate:(NSArray *)array {

    NSInteger count = 0;

    for (int i = 0; i < array.count; i++) {
        for (int j = i + 1; j < array.count; j++) {
            if ([array[i] integerValue] == [array[j] integerValue]) {
                count ++;
            }
        }
    }
    
    if (count >= 1) {
        return YES;
    }
    return NO;
}

@end
