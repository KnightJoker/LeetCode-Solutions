//
//  HappyNumber_202.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/11/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


#import "HappyNumber_202.h"

@implementation HappyNumber_202

- (BOOL)isHappy:(NSInteger)n {

    NSInteger count = 0;
    
    if (n > 10 || n == 10) {
        NSInteger temp = n % 10;
        n = n / 10;
        
        if (n > 0 && n < 10) {
            count = temp * temp + n * n + count;
            
            if (count == 1) {
                return YES;
            } else {
                [self isHappy:count];
            }
            
        } else {
            [self isHappy:n];
        }
     
    }
    return NO;
    
}

@end
