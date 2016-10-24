//
//  FirstUniqueCharacterInAString_387.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/19.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


/*  The Descirption of question
 

 Given a string, find the first non-repeating character in it and return it's index. If it doesn't exist, return -1.
 
 Examples:
 
 s = "leetcode"
 return 0.
 
 s = "loveleetcode",
 return 2.
 
 */

/// 这个题目还有有一点问题没有解决，关于Dictionary如何计算每次出现的总数，这会脑子要爆炸了额，明天再来解决这个问题~

#import "FirstUniqueCharacterInAString_387.h"

@implementation FirstUniqueCharacterInAString_387

- (NSInteger)fristUniqChar:(NSString *)s {
    

    NSInteger count = 0;
    NSMutableArray *stringArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < s.length; i++) {
        [stringArray addObject:@([s characterAtIndex:i])];
    }
    
    NSMutableDictionary *stringDic = [[NSMutableDictionary alloc] init];
    for (int i = 0; i < stringArray.count; i++) {

        [stringDic addEntriesFromDictionary:@{stringArray[i]:@(count++)}];
    }
    for (int i = 0; i < stringArray.count; i++) {
        if ([[stringDic objectForKey:stringArray[i]] integerValue] == 1) {
            return i;
        }
    }
    
    return -1;
}

@end
