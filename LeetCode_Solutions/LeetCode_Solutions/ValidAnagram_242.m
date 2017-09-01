//
//  ValidAnagram_242.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/16.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import "ValidAnagram_242.h"

@implementation ValidAnagram_242

- (BOOL)isAnagram:(NSString *)s
              and:(NSString *)t {


    NSMutableArray *sString = [[NSMutableArray alloc] init];
    NSMutableArray *tString = [[NSMutableArray alloc] init];

    sString = [self stringTransforArray:sString andString:s];
    tString = [self stringTransforArray:tString andString:t];
    
    [self sort:sString];
    [self sort:tString];

    if ([sString isEqual:tString]) {
        return YES;
    }
    return NO;
}

- (NSMutableArray *)stringTransforArray:(NSMutableArray *)array
                              andString:(NSString *)string {

    for (int i = 0; i < string.length; i++) {
        [array addObject:@([string characterAtIndex:i])];
    }
    return array;
}

- (void)sort:(NSMutableArray *)array {

    for (int i = 0; i < array.count; i ++) {
        for (int j = i + 1; j < array.count; j ++) {
            if ([array[i] integerValue] > [array[j] integerValue]) {
                NSInteger temp = [array[i] integerValue];
                array[i] = array[j];
                array[j] = [NSNumber numberWithInteger:temp];
            }
        }
    }

}
@end
