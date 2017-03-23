//
//  KeyboardRow_500.m
//  LeetCode_Solutions
//
//  Created by Huni on 23/03/2017.
//  Copyright © 2017 KnightJoker. All rights reserved.
//


/*  the description of question
 
 Given a List of words, return the words that can be typed using letters of alphabet on only one row's of American keyboard like the image below.
 
 */


#import "KeyboardRow_500.h"

NSString *const kkeyBoardRowOne = @"qwertyuiop";
NSString *const kkeyBoardRowTwo = @"asdfghjkl";
NSString *const kkeyBoardRowThree = @"zxcvbnm";

@implementation KeyboardRow_500

- (NSArray <NSString *>*)findWords:(NSArray <NSString *>*)words {

    
    NSMutableArray *resultArray = [[NSMutableArray alloc] init];
    
    
    for (NSString *word in words) {
        for(int i = 0; i < word.length; i++){
            UniChar ch = [word characterAtIndex:i];
            
        }
    }
    
    
    
    return nil;
}

@end
