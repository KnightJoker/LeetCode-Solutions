//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AddStrings_415.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        AddStrings_415 *a = [[AddStrings_415 alloc] init];
        NSLog(@"%@",[a addStrings:@"123" and:@"32"]);

    }
    return 0;
}


