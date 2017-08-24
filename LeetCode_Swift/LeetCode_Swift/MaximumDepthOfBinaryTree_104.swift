//
//  MaximumDepthOfBinaryTree_104.swift
//  LeetCode_Swift
//
//  Created by Huni on 24/08/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

public class MaximumDepthOfBinaryTree_104 {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        let left = self.maxDepth(root.left)
        let right = self.maxDepth(root.right)
        return 1 + max(left, right)
    }
}
