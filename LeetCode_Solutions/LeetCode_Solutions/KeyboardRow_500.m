//
//  KeyboardRow_500.m
//  LeetCode_Solutions
//
//  Created by Huni on 23/03/2017.
//  Copyright © 2017 KnightJoker. All rights reserved.
//



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
