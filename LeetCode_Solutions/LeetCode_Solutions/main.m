//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MoveZeroes_283.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
      
        MoveZeroes_283 *a = [[MoveZeroes_283 alloc] init];
        NSArray *temp = [[NSArray alloc] init];
        temp = @[@0,@0,@6,@3,@4,@0];
        
        NSArray *array = [[NSArray alloc] init];
        array = [a moveZeroes:temp andNumsSize:6];
        NSLog(@"%@",array);
    }
    return 0;
}
