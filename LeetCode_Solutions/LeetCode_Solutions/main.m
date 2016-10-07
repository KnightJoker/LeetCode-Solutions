//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ReverseString_344.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSString *s = [[NSString alloc] initWithFormat:@"abcda"];
        NSString *temp = [[NSString alloc] init];
        ReverseString_344 *a = [[ReverseString_344 alloc] init];
        temp = [a reverseString:s];
        NSLog(@"%@",temp);
    }
    return 0;
}
