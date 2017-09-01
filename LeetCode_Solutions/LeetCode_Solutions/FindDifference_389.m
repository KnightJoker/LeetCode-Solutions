//
//  FindDifference_389.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/9.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//



#import "FindDifference_389.h"

@implementation FindDifference_389

- (unichar)findTheDifference:(NSString *)s
                         and:(NSString *)t {

    for (int i = 0; i < s.length; i++) {
        
        if ([s characterAtIndex:i] != [t characterAtIndex:i]) {
            return [t characterAtIndex:i];
        }

    }
    return [t characterAtIndex:s.length];
}

@end
