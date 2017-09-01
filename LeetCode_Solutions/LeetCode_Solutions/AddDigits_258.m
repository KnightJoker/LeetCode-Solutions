//
//  AddDigits_258.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/8.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//



#import "AddDigits_258.h"

@implementation AddDigits_258

- (NSInteger) addDigits:(NSInteger)num {

    while (num > 10) {
        num = num /10 + num % 10;
    }
    return num;
}

@end
