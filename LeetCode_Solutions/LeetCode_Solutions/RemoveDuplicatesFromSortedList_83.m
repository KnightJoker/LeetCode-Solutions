//
//  RemoveDuplicatesFromSortedList_83.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/11/10.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//




#import "RemoveDuplicatesFromSortedList_83.h"

@implementation RemoveDuplicatesFromSortedList_83


- (struct ListNode *)deleteDuplication:(struct ListNode*)head {

    if ( head->next == nil) {
        return head;
    }
    while (head) {
        
        if (head->val == head->next->val) {
            [self deleteList:head->next];
        } else {
            head = head -> next;
        }
    }
    return head;
}

- (struct ListNode *)deleteList:(struct ListNode*)node {

    node->val = node->next->val;
    node->next = node->next->next;
    
    return node;
}

@end
