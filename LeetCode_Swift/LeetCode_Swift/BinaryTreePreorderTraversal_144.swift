//
//  BinaryTreePreorderTraversal_144.swift
//  LeetCode_Swift
//
//  Created by Huni on 25/01/2018.
//  Copyright © 2018 KnighhtJoker. All rights reserved.
//

import Foundation

class BinaryTreePreorderTraversal_144 {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        
        var res = Array<Int>()
        self.traversal(root, res: &res)
        return res
    }
    
    private func traversal(_ root: TreeNode?,res:inout [Int]) {
        guard let root = root else {
            return
        }
        
        res.append(root.val)
        self.traversal(root.left, res: &res)
        self.traversal(root.right, res: &res)
    }
}
