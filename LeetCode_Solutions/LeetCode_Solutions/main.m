//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FirstUniqueCharacterInAString_387.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSString *string = [[NSString alloc] init];
        string = @"loveleetcode";
        FirstUniqueCharacterInAString_387 *a = [[FirstUniqueCharacterInAString_387 alloc] init];
        NSLog(@"%ld",[a fristUniqChar:string]);
    }
    return 0;
}
