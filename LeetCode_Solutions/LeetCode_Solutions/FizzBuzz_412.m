//
//  FizzBuzz_412.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/28.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//




#import "FizzBuzz_412.h"

@implementation FizzBuzz_412

- (NSMutableArray *)fizzBuzz:(NSInteger)n {


    NSMutableArray *array = [[NSMutableArray alloc] init];
    for (int i = 1; i < n + 1; i++) {
        if (i % 3 == 0 && i % 5 != 0) {
            [array addObject:@"Fizz"];
        } else if (i % 3 != 0 && i % 5 == 0) {
            [array addObject:@"Buzz"];
        } else if (i % 3 == 0 && i % 5 == 0) {
            [array addObject:@"FizzBuzz"];
        } else {
            [array addObject:@(i)];
        }
    }
    
    return array;
}

@end
