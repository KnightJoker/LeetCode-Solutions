//
//  DeleteNodeInALinkedList_237.h
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/12.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import <Foundation/Foundation.h>

struct ListNode {
    
    int val;
    struct ListNode *next;
};

@interface DeleteNodeInALinkedList_237 : NSObject

- (void)deleteNode:(struct ListNode *)node;

@end
