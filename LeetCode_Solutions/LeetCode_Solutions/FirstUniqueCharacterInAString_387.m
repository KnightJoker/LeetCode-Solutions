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


#import "FirstUniqueCharacterInAString_387.h"

@implementation FirstUniqueCharacterInAString_387

- (NSInteger)fristUniqChar:(NSString *)s {
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    for (int i = 0; i < s.length; i++) {
        
        
    }
    
    for (int i = 0; i < array.count; i++) {
        for (int j = 0; j < array.count && j != i; j++) {

        }
    }
    return -1;
}

@end
