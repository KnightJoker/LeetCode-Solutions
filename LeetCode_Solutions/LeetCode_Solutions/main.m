//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AddDigits_258.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
      
        AddDigits_258 *a = [[AddDigits_258 alloc] init];
        NSInteger temp = [a addDigits:321];
        NSLog(@"%ld",temp);
    }
    return 0;
}
