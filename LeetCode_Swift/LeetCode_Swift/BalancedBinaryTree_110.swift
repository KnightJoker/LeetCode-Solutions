//
//  BalancedBinaryTree_110.swift
//  LeetCode_Swift
//
//  Created by Huni on 18/10/2017.
//  Copyright © 2017 KnighhtJoker. All rights reserved.
//

import Foundation

class BalancedBinaryTree_110 {
    func isBalanced(_ root: TreeNode?) -> Bool {
        
        guard let root = root else {
            return true
        }
        return abs(getDepth(root: root.right) - getDepth(root: root.left)) < 2 && isBalanced(root.left) && isBalanced(root.right)
    }
    
    func getDepth(root: TreeNode?) ->Int {
        
        guard let root = root else {
            return 0
        }
        return 1 + max(getDepth(root: root.left), getDepth(root: root.right))
    }
}
