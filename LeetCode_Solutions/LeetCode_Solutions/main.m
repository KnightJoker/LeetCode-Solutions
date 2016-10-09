//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FindDifference_389.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
      
        FindDifference_389 *a = [[FindDifference_389 alloc] init];
        unichar temp = [a findTheDifference:@"abcd" and:@"abcd"];
        NSLog(@"%c",temp);
    }
    return 0;
}
