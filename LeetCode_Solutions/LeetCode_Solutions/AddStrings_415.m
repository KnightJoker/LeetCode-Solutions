//
//  AddStrings_415.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/11/1.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


#import "AddStrings_415.h"

@implementation AddStrings_415

- (NSString *)addStrings:(NSString *)num1
                     and:(NSString *)num2 {
    
    return [NSString stringWithFormat:@"%ld",[num1 integerValue] + [num2 integerValue]];
}

@end
