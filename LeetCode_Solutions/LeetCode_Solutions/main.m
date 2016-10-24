//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MajorityElement_169.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *array = [[NSMutableArray alloc] init];
        NSArray *array_temp = [[NSArray alloc] init];
        array_temp = @[@(1),@(2),@(2),@(2),@(3),@(2),@(3)];
        [array addObjectsFromArray:array_temp];
        MajorityElement_169 *a = [[MajorityElement_169 alloc] init];
        NSLog(@"%ld",[a majorityElement:array]);
    }
    return 0;
}
