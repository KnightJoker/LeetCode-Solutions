//
//  ConvertANumberToHexadecimal_405.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/11/2.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//



#import "ConvertANumberToHexadecimal_405.h"

@implementation ConvertANumberToHexadecimal_405

- (NSString *)toHex:(NSInteger)num {
    
    if (num < 0) {
        return @"ffffffff";
    }
    
    NSInteger temp ;
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    while (num != 0) {
        
        temp = num % 16;
       
        if (temp == 10) {
            [array addObject:@"a"];
        } else if (temp == 11) {
            [array addObject:@"b"];
        } else if (temp == 12) {
            [array addObject:@"c"];
        } else if (temp == 13) {
            [array addObject:@"d"];
        } else if (temp == 14) {
            [array addObject:@"e"];
        } else if (temp == 15) {
            [array addObject:@"f"];
        } else {
            [array addObject:@(temp)];
        }
        
        num = num / 16;
        
    }
    
    for (int i = 0; i < array.count / 2; i++) {
        NSString *a = array[i] ;
        array[i] = array[array.count - i - 1];
        array[array.count - i - 1] = a;
    }
    
    NSString *string = [[NSString alloc] init];
    string = [array componentsJoinedByString:@""];

    return string;
}

@end
