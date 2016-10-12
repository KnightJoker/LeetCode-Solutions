//
//  LongestPalindrome_409.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/11.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

/*  The description of question
 
 Given a string which consists of lowercase or uppercase letters, find the length of the longest palindromes that can be built with those letters.
 
 This is case sensitive, for example "Aa" is not considered a palindrome here.
 
 Note:
 Assume the length of given string will not exceed 1,010.
 
 Example:
 
 Input:
 "abccccdd"
 
 Output:
 7
 
 Explanation:
 One longest palindrome that can be built is "dccaccd", whose length is 7.
 
 */

#import "LongestPalindrome_409.h"

@implementation LongestPalindrome_409

- (NSInteger)longestPalindrome:(NSString *)s {
    
    if (s.length <= 1) {
        return s.length;
    }

    return 0;
}

@end
