//
//  RansomNote_383.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/12.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//




#import "RansomNote_383.h"

@implementation RansomNote_383

- (BOOL)canConstruct:(NSString *)ransomNote and:(NSString *)magazine {

    return [magazine containsString:ransomNote];
}

@end
