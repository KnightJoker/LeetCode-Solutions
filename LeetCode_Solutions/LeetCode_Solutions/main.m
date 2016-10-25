//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ContainsDuplicate_217.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSArray *array = [[NSArray alloc] init];
        array = @[@(1),@(2),@(5),@(3)];
        ContainsDuplicate_217 *a = [[ContainsDuplicate_217 alloc] init];
        NSLog(@"%d",[a containsDuplicate:array]);
    }
    return 0;
}
