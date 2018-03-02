//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DetectCapital_520.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
    
//        DetectCapital_520 *a = [[DetectCapital_520 alloc] init];
//        
//        NSLog(@"~~~~%hhd",[a detectCapitalUse:@"LeetcOde"]);
        
        __block int val = 0;
        void (^blk)(void) = ^ {
            printf("in block val = %d\n", val);
            val = 2;
        };
        val = 1;
        blk();
        printf("in block val = %d\n", val);

    }
    return 0;
}


