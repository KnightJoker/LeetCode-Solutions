//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ValidAnagram_242.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *s = [[NSString alloc] init];
        s = @"rat";
        NSString *t = [[NSString alloc] init];
        t = @"cat";
        
        ValidAnagram_242 *a = [[ValidAnagram_242 alloc] init];
        NSLog(@"%d",[a isAnagram:s and:t]);
    }
    return 0;
}
