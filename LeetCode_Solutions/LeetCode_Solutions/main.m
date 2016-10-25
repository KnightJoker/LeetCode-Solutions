//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IntersectionOfTwoArraysII_350.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSArray *array = [[NSArray alloc] init];
        array = @[@(1),@(2),@(2),@(1)];
        NSArray *array1= [[NSArray alloc] init];
        array1 = @[@(2),@(2)];
        IntersectionOfTwoArraysII_350 *a = [[IntersectionOfTwoArraysII_350 alloc] init];
        NSLog(@"%@",[a intersect:array and:array1]);
    }
    return 0;
}
