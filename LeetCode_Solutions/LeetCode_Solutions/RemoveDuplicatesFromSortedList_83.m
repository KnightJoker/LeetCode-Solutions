//
//  RemoveDuplicatesFromSortedList_83.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/11/10.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


/*  The description of question
 
 Given a sorted linked list, delete all duplicates such that each element appear only once.
 
 For example,
 Given 1->1->2, return 1->2.
 Given 1->1->2->3->3, return 1->2->3.
 
 */

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
