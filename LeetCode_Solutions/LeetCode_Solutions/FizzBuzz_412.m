//
//  FizzBuzz_412.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/28.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//



/*  The description of question
 
 Write a program that outputs the string representation of numbers from 1 to n.
 
 But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.
 
 Example:
 
 n = 15,
 
 Return:
 [
 "1",
 "2",
 "Fizz",
 "4",
 "Buzz",
 "Fizz",
 "7",
 "8",
 "Fizz",
 "Buzz",
 "11",
 "Fizz",
 "13",
 "14",
 "FizzBuzz"
 ]
 
 */


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
