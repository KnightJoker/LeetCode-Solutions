//
//  MaximumDepthOfBinaryTree-104.c
//  Leetcode-Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/6.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

/*  问题描述
 
 Given a binary tree, find its maximum depth.
 
 The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.
 
 
 */



struct TreeNode {
     int val;
     struct TreeNode *left;
     struct TreeNode *right;
 };

int maxDepth(struct TreeNode* root) {
    
    if( root == NULL)
        return 0;
    int x = maxDepth( root->left );
    int y = maxDepth( root->right);
    return 1 + ( x>y ? x : y);
}