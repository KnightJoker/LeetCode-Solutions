//
//  SameTree_100.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/13.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


/*  The description of question
 
 Given two binary trees, write a function to check if they are equal or not.
 
 Two binary trees are considered equal if they are structurally identical and the nodes have the same value.
 
 */

#import "SameTree_100.h"

@implementation SameTree_100

- (BOOL)isSameTree:(struct TreeNode *)p and:(struct TreeNode *)q {
    
    if ( p == nil && q == nil) {
        return YES;
    } else if (p == nil || q == nil) {
        return NO;
    }
    
    if (p->val != q->val) {
        return NO;
    } else
        return [self isSameTree:p->left and:q->left] && [self isSameTree:p->right and:q->right];

}

@end
