//
//  NumberComplement_476.m
//  LeetCode_Solutions
//
//  Created by Huni on 20/03/2017.
//  Copyright © 2017 KnightJoker. All rights reserved.
//



#import "NumberComplement_476.h"

@implementation NumberComplement_476

- (NSInteger)findComplement:(NSInteger)num {

    NSInteger temp = num, mask = 1;
    while(temp) {
            temp >>= 1;
            mask <<= 1;
        }
        return ((mask - 1) ^ num);
}


@end
