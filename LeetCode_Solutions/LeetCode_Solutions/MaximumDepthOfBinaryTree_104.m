//
//  MaximumDepthOfBinaryTree_104.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/12/14.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

#import "MaximumDepthOfBinaryTree_104.h"



@implementation MaximumDepthOfBinaryTree_104

- (NSInteger)maxDepth:(struct TreeNode *)root {

    if (!root) {
        return 0;
    }
    
    NSInteger x = [self maxDepth:root->left];
    NSInteger y = [self maxDepth:root->right];
    
    return 1 + (x > y ? x : y);

}

@end
