//
//  DetectCapital_520.m
//  LeetCode_Solutions
//
//  Created by Huni on 31/03/2017.
//  Copyright © 2017 KnightJoker. All rights reserved.
//


/*
 
 Given a word, you need to judge whether the usage of capitals in it is right or not.
 
 We define the usage of capitals in a word to be right when one of the following cases holds:
 
 All letters in this word are capitals, like "USA".
 All letters in this word are not capitals, like "leetcode".
 Only the first letter in this word is capital if it has more than one letter, like "Google".
 Otherwise, we define that this word doesn't use capitals in a right way.
 
 
 */

#import "DetectCapital_520.h"

@implementation DetectCapital_520

- (BOOL)detectCapitalUse:(NSString *)word {

    NSInteger count = 0;

    for (NSInteger i = 0; i < word.length; i++) {
        if ([word characterAtIndex:i] > 'a' && [word characterAtIndex:i] < 'z') {
            count ++;
        }
    }
    
    if (count == word.length || count == 0) {
        return YES;
    } else if (count == word.length - 1 && [word characterAtIndex:0] > 'A' && [word characterAtIndex:0] < 'Z'){
        return YES;
    } else {
        return NO;
    }
}

@end
