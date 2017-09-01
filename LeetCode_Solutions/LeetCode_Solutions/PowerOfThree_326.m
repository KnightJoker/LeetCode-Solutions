//
//  PowerOfThree_326.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/11/6.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//




#import "PowerOfThree_326.h"

@implementation PowerOfThree_326


- (BOOL)isPowerOfThree:(NSInteger)n {

    if (n < 0 || n == 0) {
        return NO;
    }
    if ( ((n>>1) & ((n>>1)-1)) == 0) {
        return YES;
    }
    return NO;
}

@end
