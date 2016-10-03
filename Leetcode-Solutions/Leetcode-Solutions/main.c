//
//  main.c
//  Leetcode-Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/9/30.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#include <stdio.h>


int main(int argc, const char * argv[]) {

    int a[5];
    printf("请输入五个个数：\n");
    for (int i = 0; i < 5; i++) {
        scanf("%d",&a[i]);
    }
    int temp;
    temp = singleNumber(a, 5);
    printf("%d",temp);
    
    return 0;
}
