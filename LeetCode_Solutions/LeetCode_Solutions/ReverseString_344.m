//
//  ReverseString_344.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


#import "ReverseString_344.h"

@implementation ReverseString_344

- (NSString *)reverseString:(NSString *)s {

    NSString *tempString  = [[NSString alloc] init];
    NSMutableString * reverseString = [NSMutableString string];
    for (int i = 0; i < s.length; i++) {
        UniChar c = [s characterAtIndex:s.length - i -1];
        [reverseString appendFormat:@"%c",c];
    }
    tempString = [NSString stringWithString:reverseString];
    return tempString;
}


@end
