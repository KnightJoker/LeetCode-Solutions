//
//  ReverseLinkedList_206.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/28.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


#import "ReverseLinkedList_206.h"

@implementation ReverseLinkedList_206

- (struct ListNode *)reverseList:(struct ListNode *)head {

    if (!head || !head -> next) {
        return head;
    }
    
    struct ListNode *nextP = head -> next;
    struct ListNode *resP = [self reverseList:head->next];
    
    nextP -> next = head;
    head -> next = nil;
    return resP;
}

@end
