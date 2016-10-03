//
//  ReverseString-344.c
//  Leetcode-Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/9/30.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

/*  问题描述
 
 Write a function that takes a string as input and returns the string reversed.
 
 Example:
 Given s = "hello", return "olleh".
 
 
 */

// 字符交换操作
void swap(char *s, char *t)
{
    char temp = *s;
    *s = *t;
    *t = temp;
}
// 统计字符串长度
int length(char *s)
{
    int len = 0;
    while (s[len] != '\0')
        len++;
    return len;
}
// 字符串逆转操作
char *reverseString(char *s)
{
    int len = length(s);
    int i = 0;
    int j = len - 1;
    while (i < j)
    {
        swap(&s[i], &s[j]);
        i++;
        j--;
    }
    return s;
}