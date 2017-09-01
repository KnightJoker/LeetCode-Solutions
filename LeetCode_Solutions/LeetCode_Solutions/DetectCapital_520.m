//
//  DetectCapital_520.m
//  LeetCode_Solutions
//
//  Created by Huni on 31/03/2017.
//  Copyright © 2017 KnightJoker. All rights reserved.
//

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
