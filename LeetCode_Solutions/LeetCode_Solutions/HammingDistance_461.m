//
//  HammingDistance_461.m
//  LeetCode_Solutions
//
//  Created by Huni on 17/03/2017.
//  Copyright © 2017 KnightJoker. All rights reserved.
//

#import "HammingDistance_461.h"



@implementation HammingDistance_461

- (NSInteger)hammingDistance:(NSInteger)x
                         and:(NSInteger)y {
    
    NSInteger res = 0;
    NSInteger exc = x ^ y;
    while (exc) {
        ++res;
        exc &= (exc - 1);
    }
    return res;
    
}

@end
