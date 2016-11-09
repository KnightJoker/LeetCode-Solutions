//
//  BestTimeToBuyAndSellStock_121.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/11/9.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import "BestTimeToBuyAndSellStock_121.h"

@implementation BestTimeToBuyAndSellStock_121

- (NSInteger)maxProfit:(NSArray *)prices {


    NSInteger temp = [prices[0] integerValue];
    NSInteger dif = 0;
    
    for (NSInteger i = 1; i < prices.count; i++) {
        if ([prices[i] integerValue] < temp) {
            temp = [prices[i] integerValue];
        } else if ([prices[i] integerValue] - temp > dif) {
            dif = [prices[i] integerValue] - temp;
        }
    }
    
    return dif;
}

@end
