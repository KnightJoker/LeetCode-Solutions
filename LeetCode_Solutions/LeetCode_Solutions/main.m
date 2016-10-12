//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "RansomNote_383.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
      
        RansomNote_383 *a = [[RansomNote_383 alloc] init];

        NSLog(@"%d",[a canConstruct:@"a" and:@"ab"]);
    }
    return 0;
}
