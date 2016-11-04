//
//  main.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/7.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PowerOfTwo_231.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

//        NSArray *array = @[@"a",@"b",@"c"];
//        NSString *string = [[NSString alloc] init];
//        string = [array componentsJoinedByString:@""];
//        NSLog(@"%@",string);
//        
        PowerOfTwo_231 *a = [[PowerOfTwo_231 alloc] init];
        
        NSLog(@"%d",[a isPowerOfTwo:8]);

    }
    return 0;
}


