//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BestTimeToBuyAndSellStock_121.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

//        NSArray *array = @[@"a",@"b",@"c"];
//        NSString *string = [[NSString alloc] init];
//        string = [array componentsJoinedByString:@""];
//        NSLog(@"%@",string);
//        
        BestTimeToBuyAndSellStock_121 *a = [[BestTimeToBuyAndSellStock_121 alloc] init];
        
        NSLog(@"%ld",(long)[a maxProfit:@[@7,@6,@4,@3,@2,@1]]);

    }
    return 0;
}


