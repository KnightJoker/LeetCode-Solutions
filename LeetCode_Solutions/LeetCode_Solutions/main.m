//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RomanToInteger_13.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSString *s = [[NSString alloc] init];
        s = @"VII";
        RomanToInteger_13 *a = [[RomanToInteger_13 alloc] init];
        NSLog(@"%ld",[a romanToInt:s]);
    }
    return 0;
}
