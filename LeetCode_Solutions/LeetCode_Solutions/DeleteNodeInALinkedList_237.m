//
//  DeleteNodeInALinkedList_237.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/12.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//



#import "DeleteNodeInALinkedList_237.h"



@implementation DeleteNodeInALinkedList_237

- (void)deleteNode:(struct ListNode *)node {

    if (!node || !node->next) {
        return;
    }
    node->val = node->next->val;
    node->next = node->next->next;
}

@end
