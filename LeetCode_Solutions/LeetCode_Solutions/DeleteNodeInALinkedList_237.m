//
//  DeleteNodeInALinkedList_237.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/12.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


/*  The description of question
 
 Write a function to delete a node (except the tail) in a singly linked list, given only access to that node.
 
 Supposed the linked list is 1 -> 2 -> 3 -> 4 and you are given the third node with value 3, the linked list should become 1 -> 2 -> 4 after calling your function.
 
 
 */

#import "DeleteNodeInALinkedList_237.h"

struct ListNode {

    int val;
    struct ListNode *next;
};

@implementation DeleteNodeInALinkedList_237

- (void)deleteNode:(struct ListNode *)node {

    if (!node || !node->next) {
        return;
    }
    node->val = node->next->val;
    node->next = node->next->next;
}

@end
