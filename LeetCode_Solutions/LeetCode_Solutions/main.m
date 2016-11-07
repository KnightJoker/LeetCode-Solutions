//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "HappyNumber_202.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

//        NSArray *array = @[@"a",@"b",@"c"];
//        NSString *string = [[NSString alloc] init];
//        string = [array componentsJoinedByString:@""];
//        NSLog(@"%@",string);
//        
        HappyNumber_202 *a = [[HappyNumber_202 alloc] init];
        
        NSLog(@"%d",[a isHappy:19]);

    }
    return 0;
}


