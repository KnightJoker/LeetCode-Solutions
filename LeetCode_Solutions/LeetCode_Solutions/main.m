//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IntersectionOfTwoArrays_349.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
      
        IntersectionOfTwoArrays_349 *a = [[IntersectionOfTwoArrays_349 alloc] init];

        NSLog(@"%@",[a intersection:@[@(1),@(2),@(3),@(1)] andNun2:@[@(2),@(1)]]);
    }
    return 0;
}
