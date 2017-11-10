//
//  MinimumDepthOfBinaryTree_111.swift
//  LeetCode_Swift
//
//  Created by Huni on 10/11/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class MinimumDepthOfBinaryTree_111 {
    func minDepth(_ root: TreeNode?) -> Int {
        guard let tree = root else {
            return 0
        }
        if tree.left != nil && tree.right != nil {
            return min(minDepth(tree.left), minDepth(tree.right)) + 1
        }
        return max(minDepth(tree.left), minDepth(tree.right)) + 1
    }
}
