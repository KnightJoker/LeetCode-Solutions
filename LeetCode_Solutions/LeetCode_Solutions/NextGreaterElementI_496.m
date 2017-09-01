//
//  NextGreaterElementI_496.m
//  LeetCode_Solutions
//
//  Created by Huni on 29/03/2017.
//  Copyright © 2017 KnightJoker. All rights reserved.
//


#import "NextGreaterElementI_496.h"

@implementation NextGreaterElementI_496

- (NSMutableArray *)nextGreaterElement:(NSArray *)findNums
                                  nums:(NSArray *)nums {

    NSMutableArray *returnArray = [[NSMutableArray alloc] init];
    for (NSNumber *temp in findNums) {
        for (NSNumber *num in nums) {
            if (temp < num && temp == num) {
                [returnArray addObject:@(-1)];
            } else {
                [returnArray addObject:num];
            }
        }
    }
    return returnArray;
}

@end
